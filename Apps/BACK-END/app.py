from flask import (Flask, render_template)

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

@app.route('/radio')
def index_radio():
    return render_template('radio.html')

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')