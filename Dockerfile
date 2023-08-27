FROM python:3.8-slim-buster
WORKDIR /webvectors

RUN apt-get update && apt-get install -y wget && apt-get install unzip

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Add the commands from the shell script
RUN wget https://github.com/Turkish-Word-Embeddings/Word-Embeddings-Repository-for-Turkish/releases/download/v1.0.0/fasttext-10ep-300emb.zip && \
    unzip fasttext-10ep-300emb.zip && \
    mv fasttext-10ep-300emb.bin fasttext-skipgram.bin && \
    wget https://github.com/Turkish-Word-Embeddings/Word-Embeddings-Repository-for-Turkish/releases/download/v1.0.0/word2vec_10ep-300emb.zip && \
    unzip word2vec_10ep-300emb.zip && \
    mv word2vec_10ep-300emb.bin word2vec-skipgram.bin

EXPOSE 8000

COPY . .
RUN chmod +x entrypoint.sh

CMD ["./entrypoint.sh"]