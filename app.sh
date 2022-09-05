#!/bin/bash

nginx -g 'daemon off;' &

# Start the Flask app
python3 app.py &

# Wait for any process to exit
wait -n
