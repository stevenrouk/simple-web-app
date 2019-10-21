from flask import Flask, render_template

app = Flask(__name__)

# home page
@app.route('/')
def index():
    return render_template('index.html')

if __name__ == "__main__":
    app.run(host='localhost', port=8105, threaded=True)
