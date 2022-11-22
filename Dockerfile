FROM python:3.8-slim

WORKDIR /deepgleam_flu_docker

COPY requirements.txt ./

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

# COPY . /deepgleam_flu_docker

# CMD python dcrnn_train_pytorch.py --config_filename=data/model/dcrnn_cov.yaml