 

from flask import Flask
from flask.ext.mysqldb import MySQL
from flask import render_template



app=Flask(__name__)
#SQL configurations
app.config['MYSQL_USER'] = 'candidatosnow'
app.config['MYSQL_PASSWORD'] = 'candidatosnow_hackprma'
app.config['MYSQL_DB'] = 'candidatosnow'
app.config['MYSQL_HOST'] = 'candidatosnow.cncvoluhfnku.us-east-1.rds.amazonaws.com'
app.config['MYSQL_CURSORCLASS'] = 'DictCursor'
mysql=MySQL(app)
# mysql.init_app(app)

@app.route('/candidatos')
def secondWindow(name=None):
    return render_template('minimal.html')



@app.route('/candidatos/<p_id>/<id>')
def thirdWindow(id=id, p_id=p_id):
	# return render_template('third.window.html')

    

    cursor=mysql.connection.cursor()

    
    cursor.execute(''' SELECT id, message, date, hastags, url
                   username, media_url, profile_image_url FROM tweets''')
    messages=cursor.fetchall()
    return render_template('third-window.html', messages=messages)



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
