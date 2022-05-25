FROM python:3
EXPOSE 5000

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python", "app.py", "--host", "0.0.0.0", "--port", "5000"]
