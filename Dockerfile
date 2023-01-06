FROM python:3.8-slim

WORKDIR /flask-sample

RUN pip3 install flask

COPY hello.py /flask-sample/

CMD ["python", "hello.py"]
