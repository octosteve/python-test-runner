FROM python:3.11.2-slim

COPY requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

COPY . /opt/test-runner

WORKDIR /opt/test-runner

ENTRYPOINT [ "/opt/test-runner/bin/run.sh" ]
