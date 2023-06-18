FROM python:3.8-slim-buster
WORKDIR /webvectors

RUN apt-get update && apt-get install -y wget 

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

EXPOSE 8000

COPY . .
RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]