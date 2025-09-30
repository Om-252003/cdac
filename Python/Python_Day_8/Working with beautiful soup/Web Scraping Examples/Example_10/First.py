from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

div_text = soup.find("div", class_="container").text.strip()
span_highlight = soup.find("span", class_="highlight").text

print("Div Content:", div_text)
print("Highlighted Span:", span_highlight)
