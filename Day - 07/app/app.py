import os
from flask import Flask, jsonify, render_template

app = Flask(__name__)

DATA_FILE = "/data/visits.txt"

def get_visits():
    if not os.path.exists(DATA_FILE):
        with open(DATA_FILE, "w") as f:
            f.write("0")

    with open(DATA_FILE, "r") as f:
        count = int(f.read())

    count += 1

    with open(DATA_FILE, "w") as f:
        f.write(str(count))

    return count

@app.route("/")
def home():
    visits = get_visits()
    return render_template(
        "index.html",
        visits=visits
    )

@app.route("/health")
def health():
    return jsonify({
        "status":"UP"
    })

@app.route("/api")
def api():
    return jsonify({
        "message":"Docker Volumes",
        "persistent_storage":True
    })

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
