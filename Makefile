.PHONY: test

build:
	chmod +x make-entrypoint
	docker build --tag javanile/make.bat .

test1: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v /usr/bin/docker:/usr/bin/docker \
		javanile/make.bat build

test2: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		-v /usr/bin/docker:/usr/bin/docker \
		javanile/make.bat
