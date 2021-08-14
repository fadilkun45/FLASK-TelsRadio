from flask import (Flask, render_template, request)
import requests, datetime

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('home.html')

@app.route('/berita')
def index_berita():                  
    return render_template('berita.html')

@app.route('/musik')
def index_musik():
    return render_template('musik.html')

@app.route('/radio', methods=['GET', 'POST'])
def index_radio():
    if request.method == 'POST':
        get_ip = request.environ['REMOTE_ADDR']
        get_message = request.form['message'].replace('&','And')
        requests.get(f"https://api.telegram.org/bot1917086130:AAFp2SkEbnMFk12QOWjbuI9FnwLCOIy8j6M/sendMessage?chat_id=-1001587670679&text=REQUEST%20LAGU%E2%9D%97%0aIP : {get_ip}%0aPesan : {get_message}")
    return render_template('radio.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')