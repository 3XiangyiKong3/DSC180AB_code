FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt ./

RUN /usr/local/bin/python3 -m pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

USER root

CMD ["bin/bash"]
