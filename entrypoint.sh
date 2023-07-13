#!/bin/sh
wget https://github.com/Turkish-Word-Embeddings/Word-Embeddings-Repository-for-Turkish/releases/download/v1.0.0/fasttext-epoch_10-dim_300-min_count_10-window_5.rar &&
unrar x fasttext-epoch_10-dim_300-min_count_10-window_5.rar &&
wget https://github.com/Turkish-Word-Embeddings/Word-Embeddings-Repository-for-Turkish/releases/download/v1.0.0/word2vec-skipgram-epoch_10-dim_300-min_count_10-window_5.rar &&
unrar x word2vec-skipgram-epoch_10-dim_300-min_count_10-window_5.rar &&
nohup gunicorn run_syn:app_syn --bind 0.0.0.0:8000 > log.txt &
python word2vec_server.py > server.txt
