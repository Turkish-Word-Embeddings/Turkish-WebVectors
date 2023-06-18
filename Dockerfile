FROM python:3.8-slim-buster
WORKDIR /webvectors

RUN apt-get update && apt-get install -y wget 

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 8000

COPY . .
CMD	["gunicorn", "run_syn:app_syn", "--bind", "0.0.0.0:8000"]