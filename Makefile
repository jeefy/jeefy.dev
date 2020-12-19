#!/usr/bin/env bash

serve:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	klakegg/hugo:0.78.2 \
	server

build:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	klakegg/hugo:0.78.2 \
	server

shell:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	klakegg/hugo:0.78.2-alpine \
	shell
