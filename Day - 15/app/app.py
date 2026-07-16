from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

@app.route("/")
def home():
    return render_template(
        "index.html",
        project=os.getenv("PROJECT_NAME","DevSecOps Pipeline"),
        quality=os.getenv("QUALITY_GATE","Pending")
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "scanner":"SonarQube",
        "quality":"Ready"
    })

@app.route("/analysis")
def analysis():
    return jsonify({
        "tool":"SonarQube",
        "stage":"Static Analysis",
        "status":"Success"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
