#!/usr/bin/env bash

serve:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	klakegg/hugo:0.79.0 \
	server

build:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	klakegg/hugo:0.79.0 \
	--gc --minify

shell:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	klakegg/hugo:0.79.0-alpine \
	shell
