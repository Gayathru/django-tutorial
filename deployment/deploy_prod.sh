#!/bin/sh

ssh root@172.31.84.49 <<EOF
  cd django-tutorial
  git pull
  source /opt/envs/django-tutorial/bin/activate
  pip install -r requirements.txt
  ./manage.py migrate
  sudo supervisorctl restart django-tutorial
  exit
EOF
