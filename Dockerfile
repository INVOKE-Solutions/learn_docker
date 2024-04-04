# os
FROM python:3.9-slim-bullseye

# app setup
COPY ./app /app
COPY requirements.txt /app
# cd to app
WORKDIR /app 
RUN pip install -r requirements.txt

# execute script
CMD python ./hello.py
