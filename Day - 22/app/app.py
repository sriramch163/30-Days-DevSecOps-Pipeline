from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

IMAGE=os.getenv("IMAGE_NAME","flask-demo")
STATUS=os.getenv("SCOUT_STATUS","Healthy")

@app.route("/")
def home():
    return render_template(
        "index.html",
        image=IMAGE,
        status=STATUS
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "tool":"Docker Scout"
    })

@app.route("/scout")
def scout():
    return jsonify({
        "tool":"Docker Scout",
        "analysis":"Image Security",
        "recommendation":"Update Base Image"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
