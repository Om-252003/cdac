from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

unordered_list = [li.text for li in soup.find("ul").find_all("li")]
ordered_list = [li.text for li in soup.find("ol").find_all("li")]

print("Unordered List:", unordered_list)
print("Ordered List:", ordered_list)


