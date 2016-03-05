NAME = bshelton229/flask-example
VERSION = latest

all: build

build:
	docker build -t $(NAME):$(VERSION) --rm .

push: build
	docker push $(NAME):$(VERSION)

shell: build
	docker run -ti --rm $(NAME):$(VERSION) /bin/bash

run: build
	docker run -p 8000:8000 --rm $(NAME):$(VERSION)
