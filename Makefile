.PHONY: build serve

build:
	docker build -t lakechelanflyers .

serve:
	docker run --rm -p 4000:4000 -v "$(PWD):/site" lakechelanflyers
