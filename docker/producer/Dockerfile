# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

# RUN python3 -u send.py
# RUN ./run.sh
CMD [ "python3", "-u", "send.py", "--host=0.0.0.0"]
# CMD exec /bin/bash -c "trap : TERM INT; sleep infinity & wait"
