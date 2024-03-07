#!/bin/bash 
python3 /app/SimpleWebapp/manage.py migrate
python3 /app/SimpleWebapp/manage.py runserver 0.0.0.0:8000