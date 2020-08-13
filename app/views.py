from app import app
from flask import render_template
import os
@app.route('/')
def home():
   return "hello world! 22"
@app.route('/template')
def template():
    return render_template('home.html')
@app.route('/v1/version')
def version():
    return  os.environ['VERSION']
