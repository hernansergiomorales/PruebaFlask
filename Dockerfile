# syntax=docker/dockerfile:1
FROM python:3.11
WORKDIR /PruebaFlask
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY ./run.py /run.py
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]