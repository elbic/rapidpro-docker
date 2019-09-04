#!/bin/sh
cd /code
bower install --allow-root
python manage.py migrate
python manage.py collectstatic --no-input
uwsgi --ini uwsgi.ini
# celery --beat --app=temba worker --loglevel=DEBUG --queues=celery,flows
# celery --app=temba worker --loglevel=DEBUG --queues=msgs,handler
