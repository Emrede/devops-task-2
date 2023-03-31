#!/bin/bash

# Install virtual environment
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install pika
python3 -m pip freeze > requirements.txt