#!/bin/bash

export FLASK_ENV=development

# to enable reloading python code
# without restarting a flask server
export FLASK_DEBUG=1

# by default flask runs on port 5000
# flask run

PORT=8000
flask run -h 0.0.0.0 -p $PORT