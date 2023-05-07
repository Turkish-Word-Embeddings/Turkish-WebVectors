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

## What is done for Turkish WebVectors
* Created a folder named `models` and placed the word vector files in it.
* Replaced `webvectors.cfg` in the string `config.read('webvectors.cfg')` with the absolute path to the `webvectors.cfg` file in the following files:
    * `plotting.py`
    * `run_syn.py`
    * `sparql.py`
    * `strings_reader.py`
    * `syn.wsgi`
    * `webvectors.py`
    * `word2vec_server.py`
* Set up our service using the configuration file `webvectors.cfg`:
    * `root` = `/home/ec2-user/Turkish-WebVectors/`
    * `temp` = `/home/ec2-user/Turkish-WebVectors/temp`
    * `default_search` = `https://duckduckgo.com/?q=`
* Added models to `static_models.tsv`:
```
word2vec_skipgram_300   Word2Vec Skipgram   /home/ec2-user/Turkish-WebVectors/models/word2vec_10epoch.bin   similar4    True    False   word2vec    250000000   turkish
fasttext_skipgram_300   FastText Skipgram   /home/ec2-user/Turkish-WebVectors/models/fasttext_10epoch.bin   similar4    False    False   fastText    250000000   turkish
```
* Added `tr` to the `interface_languages` in `webvectors.cfg`. (It should be added to the front so that the language:text dictionary is created properly by `strings_reader.py`.)
* A majority of the text present in the website is taken from `strings.csv`. Added the language `tr` and added Turkish versions of the texts.
* Replaced `/data/` with `/home/ec2-user/Turkish-WebVectors/data/` in `run_syn.py`.
* Added `turkish_vocab.json`, updated `prefetch` in `data/js/hint.js` and `vocab` in `webvectors.cfg`.
* Added encoding to `csvfile = open(root + l10nfile, "rU", encoding="utf8")` in `strings_reader.py`.

1. Kutuzov, Andrei & Kuzmenko, Elizaveta. (2017). WebVectors: A Toolkit for Building Web Interfaces for Vector Semantic Models. Communications in Computer and Information Science. 661. 155-161. 10.1007/978-3-319-52920-2_15. 