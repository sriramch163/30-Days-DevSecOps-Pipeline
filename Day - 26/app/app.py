from flask import Flask,jsonify,render_template
import os

app=Flask(__name__)

ENGINE=os.getenv("ENGINE","Falco")
STATUS=os.getenv("STATUS","Monitoring")

@app.route("/")
def home():
    return render_template(
        "index.html",
        engine=ENGINE,
        status=STATUS
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP",
        "runtime_security":"Enabled"
    })

@app.route("/events")
def events():
    return jsonify({
        "runtime":"Falco",
        "alerts":"Watching"
    })

if __name__=="__main__":
    app.run(host="0.0.0.0",port=5000)
