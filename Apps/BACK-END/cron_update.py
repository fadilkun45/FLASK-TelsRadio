import mysql.connector
import requests
import bs4
from bs4 import BeautifulSoup

#SCRAPING WINPOIN
url     = requests.get('https://winpoin.com/')
url_2   = requests.get('https://winpoin.com/page/2/')
if url.status_code and url_2.status_code == 200:
    try:
        soup    = bs4.BeautifulSoup(url.text,'html.parser')
        #BERITA 1
        post_1    = soup.find_all('div','item-details')[0].find('a').get_text()
        link_1    = soup.find_all('div','item-details')[0].find('a')['href']
        thumbnail_1 = soup.find_all('div','td-module-thumb')[2].find('img')['src'].replace('-218x150','')
        #BERITA 2
        post_2    = soup.find_all('div','item-details')[1].find('a').get_text()
        link_2    = soup.find_all('div','item-details')[1].find('a')['href']
        thumbnail_2 = soup.find_all('div','td-module-thumb')[3].find('img')['src'].replace('-218x150','')
        #BERITA 3
        post_3    = soup.find_all('div','item-details')[2].find('a').get_text()
        link_3    = soup.find_all('div','item-details')[2].find('a')['href']
        thumbnail_3 = soup.find_all('div','td-module-thumb')[4].find('img')['src']
        #BERITA 4
        post_4    = soup.find_all('div','item-details')[3].find('a').get_text()
        link_4    = soup.find_all('div','item-details')[3].find('a')['href']
        thumbnail_4 = soup.find_all('div','td-module-thumb')[5].find('img')['src']
        #BERITA 5
        post_5    = soup.find_all('div','item-details')[4].find('a').get_text()
        link_5    = soup.find_all('div','item-details')[4].find('a')['href']
        thumbnail_5 = soup.find_all('div','td-module-thumb')[6].find('img')['src']
        #BERITA 6
        post_6    = soup.find_all('div','item-details')[5].find('a').get_text()
        link_6    = soup.find_all('div','item-details')[5].find('a')['href']
        thumbnail_6 = soup.find_all('div','td-module-thumb')[7].find('img')['src']
        #BERITA 7
        post_7    = soup.find_all('div','item-details')[6].find('a').get_text()
        link_7    = soup.find_all('div','item-details')[6].find('a')['href']
        thumbnail_7 = soup.find_all('div','td-module-thumb')[8].find('img')['src']
        #BERITA 8
        post_8    = soup.find_all('div','item-details')[7].find('a').get_text()
        link_8    = soup.find_all('div','item-details')[7].find('a')['href']
        thumbnail_8 = soup.find_all('div','td-module-thumb')[9].find('img')['src']
        #BERITA 9
        post_9    = soup.find_all('div','item-details')[8].find('a').get_text()
        link_9    = soup.find_all('div','item-details')[8].find('a')['href']
        thumbnail_9 = soup.find_all('div','td-module-thumb')[10].find('img')['src']
        #BERITA 10
        post_10    = soup.find_all('div','item-details')[9].find('a').get_text()
        link_10    = soup.find_all('div','item-details')[9].find('a')['href']
        thumbnail_10 = soup.find_all('div','td-module-thumb')[11].find('img')['src']
        #BERITA 11
        soup_2    = bs4.BeautifulSoup(url_2.text,'html.parser')
        post_11   = soup_2.find_all('div','item-details')[0].find('a').get_text()
        link_11    = soup_2.find_all('div','item-details')[0].find('a')['href']
        thumbnail_11 = soup_2.find_all('div','td-module-thumb')[0].find('img')['src']
        #MYSQL KONFIGURASI
        mydb = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',
            database='tomcat_radio'
        )
        mycursor = mydb.cursor()

        sql = "UPDATE berita SET thumbnail = %s, link =%s ,judul = %s WHERE id=%s;"
        tup_thumbnail = [
            (thumbnail_1,link_1,post_1,1),
            (thumbnail_2,link_2,post_2,2),
            (thumbnail_3,link_3,post_3,3),
            (thumbnail_4,link_4,post_4,4),
            (thumbnail_5,link_5,post_5,5),
            (thumbnail_6,link_6,post_6,6),
            (thumbnail_7,link_7,post_7,7),
            (thumbnail_8,link_8,post_8,8),
            (thumbnail_9,link_9,post_9,9),
            (thumbnail_10,link_10,post_10,10),
            (thumbnail_11,link_11,post_11,11)
            ]
        mycursor.executemany(sql,tup_thumbnail)
        mydb.commit()
        print(mycursor.rowcount, "was inserted.") 
    except IndexError:
        exit()
else:
    exit()

