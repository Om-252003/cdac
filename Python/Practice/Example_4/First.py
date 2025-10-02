from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

paragraphs = [p.text for p in soup.find_all("p")]

print("Paragraphs:", paragraphs)
