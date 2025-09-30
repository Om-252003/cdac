from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

images = [{img["alt"]: img["src"]} for img in soup.find_all("img")]

print("Images:", images)


