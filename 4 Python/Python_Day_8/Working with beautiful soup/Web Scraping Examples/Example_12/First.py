from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

scripts = [script.text.strip() for script in soup.find_all("script")]

print("JavaScript Code:", scripts)
