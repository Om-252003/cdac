from bs4 import BeautifulSoup

with open("Sample.html", "r", encoding="utf-8") as file:
    soup = BeautifulSoup(file, "html.parser")

meta_tags = {meta["name"]: meta["content"] for meta in soup.find_all("meta")}

print("Meta Tags:", meta_tags)
