from flask import Flask, render_template
app = Flask(__name__)
import configparser

@app.route("/")
def main():
    #return "Dzien dobry!"
    zmienne = { 'jaka_zmienna': 'to ja, zmienna', 'kolejny_parametr': 1234567 }
    return render_template('index.html', zmienne=zmienne)


@app.route('/index')
def index():
    nazwa = {'nazwa': 'tutaj jakas nazwa naszej aplikacji'}
    return '''
    <html>
        <head>
            <title>Home Page - Microblog</title>
        </head>
        <body>
            <h1>to wypiszemy na ekran to zdanie i wartość zmiennej słownika nazwa przekazaną tutaj dynamicznie: <br>''' + nazwa['nazwa'] + '''!</h1>
        </body>
    </html>'''


if __name__ == "__main__":
    app.run(host='0.0.0.0', port='8080')
