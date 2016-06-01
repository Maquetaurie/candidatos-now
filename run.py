 

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

@app.route('/')
def landing():


    return render_template('first-window.html')

@app.route('/candidatos/<c_id>')
def secondWindow(c_id):
    return render_template('second-window.html', c_id=c_id)



@app.route('/candidatos/<id>/<p_id>')
def thirdWindow(id, p_id):
	# return render_template('third.window.html')

    

    cursor=mysql.connection.cursor()

    cursor.execute(''' SELECT pilar from pilar where t_id=%s '''%(p_id))

    t=cursor.fetchall()[0]

    cursor.execute(''' SELECT nombre, apellido, image_url FROM candidates where id=%s '''%(id))

    candidate=cursor.fetchall()[0]
   
    cursor.execute(''' SELECT id, message, date, hastags, url, username, media_url, profile_image_url FROM tweets where candidate_id=%s and pilar=%s'''%(id,p_id))

    messages=cursor.fetchall()
    print messages
    return render_template('third-window.html', messages=messages, candidate=candidate, pilar=t['pilar'])



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