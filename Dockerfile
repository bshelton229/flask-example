FROM alpine:3.3

RUN apk add --update \
    bash \
    vim \
    py-pip \
    && rm -rf /var/cache/apk/*

RUN pip install \
    flask \
    gunicorn

COPY ./app /app
WORKDIR /app
EXPOSE 8000
CMD ["gunicorn", "--bind=0.0.0.0:8000", "--access-logfile=-", "app:app", "2>&1"]
