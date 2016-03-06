from flask import Flask
app = Flask(__name__)


@app.route('/')
def index():
    return 'Hello 11'


@app.route('/subpage/')
def subpage():
    return 'This is a subpage'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
