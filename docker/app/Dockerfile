FROM python:3.9.7

WORKDIR /app
ADD . /app

RUN apt-get update -y && apt-get install -y libopencv-dev software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


RUN echo 'deb https://notesalexp.org/tesseract-ocr/bullseye/ bullseye main' >>  /etc/apt/sources.list
RUN wget -O - https://notesalexp.org/debian/alexp_key.asc | apt-key add - \
    && apt-get update -y \
    && apt-get install -y tesseract-ocr


RUN pip install -U pip
RUN pip install -U poetry==1.1.6

ENTRYPOINT ["/app/docker/app/entrypoint.sh"]
