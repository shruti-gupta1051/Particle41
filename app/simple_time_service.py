from flask import Flask, request
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def get_time():
    timestamp = datetime.utcnow().isoformat() + "Z"
    ip = request.remote_addr
    return {
        "timestamp": timestamp,
        "ip": ip
    }

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=4545)
