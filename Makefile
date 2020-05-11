VERSION_LINE := $(shell grep 'VERSION=' Dockerfile)
VERSION := $(subst ARG VERSION=,,$(VERSION_LINE))
IMAGE_NAME ?= alexsavio/terraform-npm-py:$(VERSION)
TAG = $(VERSION)

build:
	docker build -t $(IMAGE_NAME) .

pull:
	docker pull $(IMAGE_NAME)

shell:
	docker run --rm -it -v $(PWD):/opt/app $(IMAGE_NAME) bash

tag:
	-git tag -d $(TAG)
	-git push origin :refs/tags/$(TAG)
	git tag $(TAG)
	git push origin $(TAG)
