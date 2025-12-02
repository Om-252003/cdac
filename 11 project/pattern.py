import requests

API_KEY = "579b464db66ec23bdd000001c544515bbb374d9a7324c4353ba6822e"
RESOURCE_ID = "3b01bcb8-0b14-4abf-b6f2-c1bfd384ba69"

url = f"https://api.data.gov.in/resource/{RESOURCE_ID}"
params = {
    "api-key": API_KEY,
    "format": "json",
    "limit": 0
}

res = requests.get(url, params=params).json()

# this part depends on the API response structure
print(res)
