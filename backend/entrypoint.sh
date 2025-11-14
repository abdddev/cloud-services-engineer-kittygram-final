#!/bin/bash

python manage.py migrate

python manage.py collectstatic --noinput

cp -r collected_static/* /static/

exec gunicorn kittygram_backend.wsgi:application --bind 0:8000