from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

#headings = {"h"+str(i): [tag.text for tag in soup.find_all("h"+str(i))] for i in range(1, 7)}

headings = {f"h{i}": [tag.text for tag in soup.find_all(f"h{i}")] for i in range(1, 7)}

print(headings)
