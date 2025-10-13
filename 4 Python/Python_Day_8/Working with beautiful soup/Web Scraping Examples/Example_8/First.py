from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

table_data = []
table = soup.find("table")

for row in table.find_all("tr"):
    #cells = [cell for cell in row.find_all(["th", "td"])]
    cells = [cell.text for cell in row.find_all(["th", "td"])]
    table_data.append(cells)

print("Table Data:", table_data)


