# 1) 轻量 Python 基础镜像
FROM python:3.10-slim

# 2) 工作目录
WORKDIR /app

# 3) 复制应用代码
COPY run.py /app/run.py

# 4) 安装与 Flask 1.x 兼容的一组依赖（关键点：用 \ 续行）
RUN pip install --no-cache-dir \
    Flask==1.1.2 \
    Jinja2==3.0.3 \
    itsdangerous==2.0.1 \
    Werkzeug==1.0.1 \
    click==7.1.2

# 5) 暴露端口
EXPOSE 8080

# 6) 启动命令
CMD ["python", "/app/run.py"]
