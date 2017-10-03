# -*- coding: utf-8 -*-
"""
Created on Tue Aug  8 11:08:16 2017

@author: Nandy
"""

import urllib.request
from bs4 import BeautifulSoup
url = "https://in.bookmyshow.com/chennai/movies"
page= urllib.request.urlopen(url)
soup = BeautifulSoup(page)
print(soup.prettify())
print(soup.find_all("a"))
all_links = soup.find_all("a")
for link in all_links:
    print (link.get("href"))
tit= soup.find(id='productClickArray')
print(tit)