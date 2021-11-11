import requests
from bs4 import BeautifulSoup

url = 'https://leagueoflegends.fandom.com/es/wiki/League_of_Legends_Wiki'
page = requests.get(url)
soup = BeautifulSoup(page.content, 'html.parser')

sw = soup.find_all('ol')
print(sw)
file = open('Champ_Roster.txt','w')
file.write(str(sw))
file.close()
