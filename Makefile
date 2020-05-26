.PHONY: test

build:
	chmod +x make-entrypoint
	docker build --tag javanile/make.bat .

release: build
	docker push javanile/make.bat
	git add .
	git commit -am "release"
	git push

docker-compose:
	docker-compose help

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
		javanile/make.bat docker-compose

test-version: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat --version


