import socket
from flask import Flask, jsonify, render_template

app = Flask(__name__)

HOSTNAME = socket.gethostname()

@app.route("/")
def home():
    return render_template(
        "index.html",
        hostname=HOSTNAME
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "hostname":HOSTNAME
    })

@app.route("/network")
def network():
    return jsonify({
        "hostname":HOSTNAME,
        "message":"Docker Networking Working",
        "network":"bridge"
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0",port=5000)
