FROM alpine:3.3

RUN apk add --update \
    curl \
    bash \
    vim \
    py-pip \
    && rm -rf /var/cache/apk/*

RUN pip install \
    futures \
    flask \
    gunicorn

COPY ./app /app
WORKDIR /app
EXPOSE 8000
CMD ["gunicorn", "--workers=2", "--threads=2", "--timeout=60", "--bind=0.0.0.0:8000", "--access-logfile=-", "app:app", "2>&1"]
