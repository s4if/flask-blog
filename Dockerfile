# non-lokal
FROM python:alpine

# lokal lab
#FROM 192.168.150.14:5000/python:alpine

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN flask --app flaskdemo init-db

CMD [ "python", "wsgi_start.py" ]
EXPOSE 8080