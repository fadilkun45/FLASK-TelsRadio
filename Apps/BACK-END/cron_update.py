import requests,json,bs4,mysql.connector,spotipy
from bs4 import BeautifulSoup
from spotipy.oauth2 import SpotifyClientCredentials

#SCRAPING WINPOIN
url_winpoin     = requests.get('https://winpoin.com/')
url_winpoin2   = requests.get('https://winpoin.com/page/2/')

#API YOUTUBE
url_youtube = requests.get('https://youtube.googleapis.com/youtube/v3/activities?part=snippet%2CcontentDetails&channelId=UCjsTHbWeujQU82uljWS_U6g&maxResults=3&key=AIzaSyDZYK9dchWnI4L6e_UDA4HCsG_JzNS2ZT4')

#API SPOTIFY
sp = spotipy.Spotify(auth_manager=SpotifyClientCredentials(client_id="ba14c47606e84674926f6ee76677909c",
                                                          client_secret="d91188d76f794b128d0317d166f34fd8"))

if url_winpoin.status_code and url_winpoin2.status_code and url_youtube.status_code == 200:
    try:

        '''
        PARSING API SPOTIFY
        '''
        #New Release 1
        link_1 = sp.new_releases(country='ID', limit=10)['albums']['items'][0]['artists'][0]['external_urls']['spotify']
        images_1 = sp.new_releases(country='ID', limit=10)['albums']['items'][0]['images'][0]['url']
        singer_1 = sp.new_releases(country='ID', limit=10)['albums']['items'][0]['artists'][0]['name']
        #New Release 2
        link_2 = sp.new_releases(country='ID', limit=10)['albums']['items'][1]['artists'][0]['external_urls']['spotify']
        images_2 = sp.new_releases(country='ID', limit=10)['albums']['items'][1]['images'][0]['url']
        singer_2 = sp.new_releases(country='ID', limit=10)['albums']['items'][1]['artists'][0]['name']
        #New Release 3
        link_3 = sp.new_releases(country='ID', limit=10)['albums']['items'][2]['artists'][0]['external_urls']['spotify']
        images_3 = sp.new_releases(country='ID', limit=10)['albums']['items'][2]['images'][0]['url']
        singer_3 = sp.new_releases(country='ID', limit=10)['albums']['items'][2]['artists'][0]['name']
        #New Release 4
        link_4 = sp.new_releases(country='ID', limit=10)['albums']['items'][3]['artists'][0]['external_urls']['spotify']
        images_4 = sp.new_releases(country='ID', limit=10)['albums']['items'][3]['images'][0]['url']
        singer_4 = sp.new_releases(country='ID', limit=10)['albums']['items'][3]['artists'][0]['name']
        #New Release 5
        link_5 = sp.new_releases(country='ID', limit=10)['albums']['items'][4]['artists'][0]['external_urls']['spotify']
        images_5 = sp.new_releases(country='ID', limit=10)['albums']['items'][4]['images'][0]['url']
        singer_5 = sp.new_releases(country='ID', limit=10)['albums']['items'][4]['artists'][0]['name']

        '''
        PARSING SCRAP WINPOIN
        '''
        soup    = bs4.BeautifulSoup(url_winpoin.text,'html.parser')
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
        soup_2    = bs4.BeautifulSoup(url_winpoin2.text,'html.parser')
        post_11   = soup_2.find_all('div','item-details')[0].find('a').get_text()
        link_11    = soup_2.find_all('div','item-details')[0].find('a')['href']
        thumbnail_11 = soup_2.find_all('div','td-module-thumb')[0].find('img')['src']

        '''
        PARSING API YOUTUBE
        '''
        #LINK YOUTUBE 1
        link_youtube_1 = url_youtube.json()['items'][0]['contentDetails']['upload']['videoId']
        #LINK YOUTUBE 2
        link_youtube_2 = url_youtube.json()['items'][1]['contentDetails']['upload']['videoId']
        #LINK YOUTUBE 3
        link_youtube_3 = url_youtube.json()['items'][2]['contentDetails']['upload']['videoId']

        '''
        MYSQL CONFIG
        '''
        mydb = mysql.connector.connect(
            host='localhost',
            user='root',
            password='',
            database='tomcat_radio'
        )
        mycursor = mydb.cursor()

        sql_winpoin = "UPDATE berita SET thumbnail = %s, link =%s ,judul = %s WHERE id=%s;"
        sql_youtube = "UPDATE youtube SET link = %s WHERE id=%s;"
        sql_spotify = "UPDATE spotify SET singer=%s, link=%s, images=%s WHERE id=%s;"

        tup_winpoin = [
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

        tup_youtube = [
            (link_youtube_1,1),
            (link_youtube_2,2),
            (link_youtube_3,3)
        ]
        tup_spotify = [
            (singer_1,link_1,images_1,1),
            (singer_2,link_2,images_2,2),
            (singer_3,link_3,images_3,3),
            (singer_4,link_4,images_4,4),
            (singer_5,link_5,images_5,5)
        ]

        mycursor.executemany(sql_winpoin,tup_winpoin)
        print(mycursor.rowcount, "Artikel Diperbarui") 
        mycursor.executemany(sql_youtube,tup_youtube)
        print(mycursor.rowcount, "Link Youtube Diperbarui") 
        mycursor.executemany(sql_spotify,tup_spotify)
        print(mycursor.rowcount, "New Music") 
        mydb.commit()

    except IndexError:
        exit()
else:
    exit()