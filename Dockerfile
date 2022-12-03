FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt ./

RUN /usr/local/bin/python3 -m pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

# COPY . /DSC180A_MA5

# CMD python3 dcrnn_train_pytorch.py --config_filename=data/model/dcrnn_cov.yaml