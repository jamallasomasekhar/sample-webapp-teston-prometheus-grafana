FROM alpine:3.14

RUN apk --no-cache add python2 py2-pip \
    && pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r /usr/src/app/requirements.txt

COPY app.py /usr/src/app/
COPY templates/index.html /usr/src/app/templates/

WORKDIR /usr/src/app
EXPOSE 5000

CMD ["python", "app.py"]
