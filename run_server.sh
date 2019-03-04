#!/bin/bash

python3 manage.py migrate --settings=timestrap.settings.docker
daphne timestrap.asgi:application --port 80 --bind 0.0.0.0 -v2
