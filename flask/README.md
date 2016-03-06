# Flask

## **Installing Like A Boss (OS X)**

```bash
brew install python
pip install virtualenv
pip install virtualenvwrapper
mkdir ${HOME}/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
```

## **Running**

```bash
pip install flask                # install flask library globally
./app.py                         # run program
```

## **Running Like A Boss**

```bash
mkvirtualenv flaskenv            # create segregated environment
pip install -r requirements.txt  # install flask library locally
./app.py                         # run program
deactivate                       # exit segregated environment
```
