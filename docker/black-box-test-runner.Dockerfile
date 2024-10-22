FROM python:3.11

WORKDIR /opt/black_box

COPY ./black_box/requirements.txt .

RUN python -m pip install -r requirements.txt

COPY ./black_box/ .

ENTRYPOINT ["python", "-m", "unittest"]
