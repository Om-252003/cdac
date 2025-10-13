from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

inputs = {input_tag["name"]: input_tag["type"] for input_tag in soup.find_all("input")}
textarea = soup.find("textarea").text
button = soup.find("button").text

print("Input Fields:", inputs)
print("Textarea:", textarea)
print("Button Text:", button)


