from flask import Flask, jsonify
from datetime import datetime, timezone

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello world!"

@app.route("/time")
def get_time():
    # 生成本地时区的 ISO 8601 时间串
    now = datetime.now(timezone.utc).astimezone()
    return jsonify(time=now.isoformat())

if __name__ == "__main__":
    # 一定要监听 0.0.0.0:8080，这样 Docker 端口映射才能访问到
    app.run(host="0.0.0.0", port=8080)
