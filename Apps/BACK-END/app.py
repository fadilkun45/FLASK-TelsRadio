from flask import (Flask, render_template)
from flask_mysql_connector import MySQL

app = Flask(__name__)

'''
DATABASE MYSQL
'''
app.config['MYSQL_HOST']        = 'localhost'
app.config['MYSQL_USER']        = 'root'
app.config['MYSQL_PASSWORD']    = ''
app.config['MYSQL_DATABASE']    = 'tomcat_radio'
mysql = MySQL(app)

@app.route('/')
def index():
    conn = mysql.connection
    cur_1 = conn.cursor()
    cur_1.execute('SELECT * FROM berita WHERE id=1;')
    berita_1 = cur_1.fetchall()

    cur_2 = conn.cursor()
    cur_2.execute('SELECT * FROM berita WHERE id=2;')
    berita_2 = cur_2.fetchall()

    cur_3 = conn.cursor()
    cur_3.execute('SELECT * FROM berita WHERE id IN (3,4,5,6,7);')
    berita_3 = cur_3.fetchall()

    cur_4 = conn.cursor()
    cur_4.execute('SELECT * FROM berita WHERE id IN (8,9,10,11);')
    berita_4 = cur_4.fetchall()

    cur_youtube = conn.cursor()
    cur_youtube.execute('SELECT * FROM youtube;')
    api_youtube = cur_youtube.fetchall()
    
    return render_template(
        'berita.html',
        berita_1=berita_1,
        berita_2=berita_2,
        berita_3=berita_3,
        berita_4=berita_4,
        api_youtube=api_youtube
        )


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')

