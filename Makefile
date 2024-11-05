#!/usr/bin/env bash

serve:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	hugomods/hugo:exts-non-root  \
	server

build:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	hugomods/hugo:exts-non-root  \
	--gc --minify

shell:
	docker run --rm -it \
	-v ${PWD}:/src \
	-p 1313:1313 \
	hugomods/hugo:exts-non-root  \
	shell
