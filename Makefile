# options
ignore_output = &> /dev/null

.PHONY: build

build:
	cd cbor-site && git pull && npm i --no-save && npm run build
	cd .. && rm -rf docs
	mv cbor-site/build docs
	cp CNAME ./docs/CNAME