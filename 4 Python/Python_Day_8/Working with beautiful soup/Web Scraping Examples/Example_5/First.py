from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

links = {a.text: a["href"] for a in soup.find_all("a")}

print("Links:", links)
