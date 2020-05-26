.PHONY: test

build:
	chmod +x make-entrypoint
	docker build --tag javanile/make.bat .

release: build
	docker push javanile/make.bat
	git add .
	git commit -am "release"
	git push

requirements:
	pip3 install --upgrade pip setuptools wheel
	pip3 install tqdm
	pip3 install --user --upgrade twine

pip-release: requirements
	rm -rf build/ dist/ *egg* **.pyc __pycache__
	python3 setup.py bdist_wheel
	python3 -m twine upload dist/*

test1: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat build

test2: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat docker-compose

test-version: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat --version

test-docker-info: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat --docker-info

test-docker-version: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat --docker-version

test-docker-workdir-ls: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat --docker-workdir-ls

test-docker-compose-version: build
	docker run --rm \
		-v ${PWD}:/make \
		-v /var/run/docker.sock:/var/run/docker.sock \
		javanile/make.bat --docker-compose-version
