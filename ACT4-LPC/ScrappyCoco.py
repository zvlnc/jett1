#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup
import sys

def get_soup(url: str) -> BeautifulSoup:
    response = requests.get(url)
    return BeautifulSoup(response.content, "html.parser")

def wiki():
    soup = get_soup("https://es.wikipedia.org/wiki/Anexo:Países")
    rows = soup.find_all("table")[0].find_all("tr")
    for row in rows:
        columns = row.find_all("td")
        t = [ele.text.strip() for ele in columns]
        sys.stdout = open("info.txt", "w")
        print(f"{t}")
        sys.stdout.close()      
  
wiki()