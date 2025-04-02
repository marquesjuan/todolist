FROM python:3

WORKDIR /usr/src/app

COPY dependencias.txt .

RUN pip install --no-cache-dir -r dependencias.txt

COPY  . .

EXPOSE 8000
