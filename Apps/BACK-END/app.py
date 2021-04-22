from flask import (Flask, render_template)
import requests 

app = Flask(__name__)

@app.route('/')
def index():                  
    url_youtube = requests.get('http://api-tomcatsquad.herokuapp.com/api/v1/youtube/?limit=3')
    api_youtube = url_youtube.json()['results']

    url_berita = requests.get('http://api-tomcatsquad.herokuapp.com/api/v1/news/?limit=13')
    api_berita = url_berita.json()['results']
    return render_template(
        'berita.html',
        api_youtube=api_youtube,
        berita=api_berita,
    )

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')