from flask import Flask
from flask import jsonify
from flask import request
import pymysql.cursors


app = Flask(__name__)

@app.route("/contacto", methods = ['POST', 'GET'])
def contactoHandling():
    respuesta = jsonify([])
    # Vamos a permitir conexion de cualquier lado ##WARNING! Security
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    if request.method == 'POST':
        data = request.form
        connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
        with connection:
            with connection.cursor() as cursor:
                sql = "INSERT INTO `contacto` (`nombre`, `apellido`, `email`, `comentario`) VALUES (%s, %s, %s, %s)" # 
                cursor.execute(sql, (data['nombre'],data['apellido'], data['email'], data['comentario']))
            connection.commit()
        print(data['nombre'])
        print(data['apellido'])
        print(data['email'])
        print(data['comentario'])
    return respuesta



@app.route("/bizarroUno", methods = ['GET'])
def BizarroUno():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `bizarro` WHERE `nombre`=%s"
            #sql = "SELECT * FROM `bizarro`" # dame todos los userszz
            
            cursor.execute(sql, ('dos hermanas'))
            #cursor.execute(sql)
            #cursor.fetchone()

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta

@app.route("/bizarroDos", methods = ['GET'])
def bizarroDos():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `bizarro` WHERE `nombre`=%s"
            
            cursor.execute(sql, ('La mosca'))

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta

@app.route("/bizarroTres", methods = ['GET'])
def bizarroTres():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `bizarro` WHERE `nombre`=%s"
            
            cursor.execute(sql, ('Las Voces'))
            

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta


@app.route("/de-cultoUno", methods = ['GET'])
def de_cultoUno():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `de_culto` WHERE `nombre`=%s"
            
            cursor.execute(sql, ('el resplandor'))

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta

@app.route("/de-cultoDos", methods = ['GET'])
def de_cultoDos():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `de_culto` WHERE `nombre`=%s"
            
            cursor.execute(sql, ('el padrino'))

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta

@app.route("/de-cultoTres", methods = ['GET'])
def de_cultoTres():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `de_culto` WHERE `nombre`=%s"

            cursor.execute(sql, ('pulp fiction'))
 
            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta

@app.route("/seleccionUno", methods = ['GET'])
def seleccionUno():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `seleccion` WHERE `nombre`=%s"

            
            cursor.execute(sql, ('mi vida sin mi'))

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta

@app.route("/seleccionDos", methods = ['GET'])
def seleccionDos():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `seleccion` WHERE `nombre`=%s"
            cursor.execute(sql, ('Los Sonidos del Silencio'))
           

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta


@app.route("/seleccionTres", methods = ['GET'])
def seleccionTres():
    data = []
    connection = pymysql.connect(host='localhost',
                             user='root',
                             password='5Peniques',
                             database='db_team2',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
    with connection:
        with connection.cursor() as cursor:

            sql = "SELECT * FROM `seleccion` WHERE `nombre`=%s"
            
            cursor.execute(sql, ('Las Alas del Deseo'))
        

            for row in cursor:
                data.append(row)
                print (row)
    
    
    respuesta = jsonify(data)
    respuesta.headers.add('Access-Control-Allow-Origin', '*')
    return respuesta


if __name__ == '__main__':
    app.run(debug=True, port=5000)