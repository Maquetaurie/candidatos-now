
from flask import Flask
from flask.ext.mysql import MySQL
from flask import render_template



mysql=MySQL()
app=Flask(__name__)
#SQL configurations
app.config['MYSQL_DATABASE_USER'] = 'candidatosnow'
app.config['MYSQL_DATABASE_PASSWORD'] = 'candidatosnow_hackprma'
app.config['MYSQL_DATABASE_DB'] = 'candidatosnow'
app.config['MYSQL_DATABASE_HOST'] = 'candidatosnow.cncvoluhfnku.us-east-1.rds.amazonaws.com'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql.init_app(app)

@app.route('/candidatos')
def secondWindow(name=None):
    return render_template('minimal.html')


@app.route('/candidatos/<id>')
def infoThirdWindow(id=id):
	
	conn=mysql.connect()
	cursor=conn.cursor()

	
	cursor.execute(''' SELECT id, message, date, hastags, url
	               username, media_url, profile_image_url FROM tweets''')
	rv=cursor.fetchall()
	return str(rv)
@app.route('/candidatos/name')
def thirdWindow(name=None):
	return render_template('third.window.html')


#   <!doctype html>
# <link rel=stylesheet type=text/css href="{{ url_for('static', filename='style.css') }}">
# <div class=page align="center">

#   <h1>Candidatos Now</h1>
#   {% for message in users() %}
#     <div class=flash>{{ message }}</div>
#   {% endfor %}
#   {% block body %}{% endblock %}
# </div>

if __name__ == '__main__':
	app.debug=True
	app.run()
