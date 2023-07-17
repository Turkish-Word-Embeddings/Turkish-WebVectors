#!/bin/sh
wget https://github.com/Turkish-Word-Embeddings/Word-Embeddings-Repository-for-Turkish/releases/download/v1.0.0/fasttext-10ep-300emb.zip &
wait $!
unzip fasttext-10ep-300emb.zip &
wait $!
mv fasttext-10ep-300emb.bin fasttext-skipgram.bin &
wait $!
wget https://github.com/Turkish-Word-Embeddings/Word-Embeddings-Repository-for-Turkish/releases/download/v1.0.0/word2vec_10ep-300emb.zip &
wait $!
unzip word2vec_10ep-300emb.zip &
wait $!
mv word2vec_10ep-300emb.bin word2vec-skipgram.bin &
wait $!
nohup gunicorn run_syn:app_syn --bind 0.0.0.0:8000 > log.txt &
python word2vec_server.py > server.txt
