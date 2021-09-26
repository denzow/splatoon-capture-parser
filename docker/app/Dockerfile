FROM python:3.9.7

WORKDIR /app
ADD . /app

RUN apt-get update -y && apt-get install -y libopencv-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


RUN pip install -U pip
RUN pip install -U poetry==1.1.6

ENTRYPOINT ["/app/docker/app/entrypoint.sh"]
