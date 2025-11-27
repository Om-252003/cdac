import requests
import json
import csv
import time

API_KEY = "579b464db66ec23bdd000001c544515bbb374d9a7324c4353ba6822e"
RESOURCE_ID = "35985678-0d79-46b4-9ed6-6f13308a1d24"

offset = 0
batch_size = 1000

first_write = True

with open("full_market_data.csv", "w", newline='', encoding="utf-8") as csvfile:

    while True:
        if offset > 1000 : break

        url = f"https://api.data.gov.in/resource/{RESOURCE_ID}?api-key={API_KEY}&format=json&limit={batch_size}&offset={offset}"
        response = requests.get(url).json()

        records = response.get("records", [])
        if not records:
            print("No more records — finished.")
            break

        if first_write:
            writer = csv.DictWriter(csvfile, fieldnames=records[0].keys())
            writer.writeheader()
            first_write = False

        for row in records:
            writer.writerow(row)

        offset += batch_size
        print(f"Saved {offset} rows so far...")

        time.sleep(0.3)
