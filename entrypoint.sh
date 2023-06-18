#!/bin/sh
nohup gunicorn run_syn:app_syn --bind 0.0.0.0:8000 > log.txt &
python word2vec_server.py > server.txt