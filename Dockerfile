# 使用官方 Python 執行環境作為基礎映像
FROM python:3.9.9-slim

RUN mkdir /app

# 設定工作目錄為 /app
#WORKDIR /app

# 將當前目錄的內容複製到容器的 /app 內
COPY python.py /app

# 安裝在 requirements.txt 中列出的必要套件
#RUN pip install --no-cache-dir -r requirements.txt

# 讓外部能夠存取容器的 8000 連接埠
#EXPOSE 8000

# 定義環境變數
#ENV NAME World

# 當容器啟動時運行 flask_python.py
CMD ["python", "/app/python.py"]

#ENTRYPOINT ["powershell", "./script_for_flask_python.ps1"]