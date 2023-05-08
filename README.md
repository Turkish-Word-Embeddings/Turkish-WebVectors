# Turkish-WebVectors
Turkish WebVectors: Tool to explore semantic relations between words in distributional models.
Based on [WebVectors](https://github.com/akutuzov/webvectors) prepared by Kutuzov _et al._ [\[1\]](https://rusvectores.org/static/data/webvectors_aist.pdf).

# Installation
* First, clone the repository from GitHub to local machine using the following command:
```bash
git clone https://github.com/akutuzov/webvectors.git .
```
* Then, create a virtual environment using the following command:
```bash
python -m venv env
```
* Then, install all the Python requirements using the following command:
```bash
pip install -r requirements.txt
```
* [Gunicorn](https://gunicorn.org/) is a pure Python WSGI server with simple configuration and multiple worker implementations for performance tuning. It is used for production deployment. Install `gunicorn` as follows:
```bash
pip install gunicorn
```

## Models
* `Word2Vec skip-gram Negative Sampling`: Trained with [gensim](https://radimrehurek.com/gensim/models/word2vec.html) using 300 dimensions, 5 epochs, 5 negative samples, minimum word count set to 5 and window size set to 5.

* `FastText skip-gram Negative Sampling`: Trained with [gensim](https://radimrehurek.com/gensim/models/fasttext.html) using 300 dimensions, 5 epochs, 5 negative samples, minimum word count set to 5 and window size set to 5.



---
1. Kutuzov, Andrei & Kuzmenko, Elizaveta. (2017). WebVectors: A Toolkit for Building Web Interfaces for Vector Semantic Models. Communications in Computer and Information Science. 661. 155-161. 10.1007/978-3-319-52920-2_15. 