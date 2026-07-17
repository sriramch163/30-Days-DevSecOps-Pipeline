from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

@app.route("/")
def home():
    return render_template(
        "index.html",
        repository=os.getenv("NEXUS_REPOSITORY","docker-hosted"),
        version=os.getenv("APP_VERSION","1.0.0")
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "repository":"Nexus",
        "artifact":"Available"
    })

@app.route("/artifact")
def artifact():
    return jsonify({
        "name":"flask-demo",
        "version":os.getenv("APP_VERSION","1.0.0"),
        "repository":"docker-hosted"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
