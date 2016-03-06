#!/usr/bin/env python
from flask import Flask
app = Flask(__name__)

@app.route('/')
@app.route('/hello') # this route not working
@app.route('/hello/')
def hello_world():
    return 'Hello World!\n'

@app.route('/hello/<username>')
def hello_user(username):
    # show the user profile for that user
    return 'Why Hello %s!\n' % username

if __name__ == '__main__':
    app.run()
