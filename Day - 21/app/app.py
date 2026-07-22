from flask import Flask, jsonify, render_template
import os

app = Flask(__name__)

PROJECT=os.getenv("PROJECT_NAME","Flask Demo")
TOOL=os.getenv("SECURITY_TOOL","OWASP Dependency-Check")

@app.route("/")
def home():
    return render_template(
        "index.html",
        project=PROJECT,
        tool=TOOL
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "tool":"Dependency-Check"
    })

@app.route("/dependencies")
def dependencies():
    return jsonify({
        "scanner":"OWASP Dependency-Check",
        "analysis":"Software Composition Analysis",
        "status":"Ready"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0", port=5000)
