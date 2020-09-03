#!make

.PHONY: build
build:
	chmod +x make-entrypoint docker-compose
	docker build --tag javanile/make.bat .

git-push:
	git add .
	git commit -am "new release" || true
	git push

docker-push: build git-push
	docker push javanile/make.bat

lint:
	docker run --rm -i hadolint/hadolint < Dockerfile
	docker run --rm -v ${PWD}/Dockerfile:/Dockerfile replicated/dockerfilelint /Dockerfile

requirements:
	pip3 install --upgrade pip setuptools wheel
	pip3 install tqdm
	pip3 install --user --upgrade twine

release: requirements
	rm -rf build/ dist/ *egg* **.pyc __pycache__
	python3 setup.py bdist_wheel --universal
	python3 -m twine upload dist/*


## -----
## Tests
## -----
test-bash: build
	bash docker-make.sh unit-bash

test-build: build
	bash docker-make.sh build

test-version: build
	bash docker-make.sh --version

test-docker-info: build
	 bash docker-make.sh --docker-info

test-docker-version: build
	bash docker-make.sh --docker-version

test-docker-compose-version: build
	bash docker-make.sh --docker-compose-version

test-docker-workdir-info: build
	bash docker-make.sh --docker-workdir-info

test-docker-compose: build
	bash docker-make.sh unit-docker-compose

test-envsubst: build
	bash docker-make.sh unit-envsubst

test-pip-install-py2:
	docker run --rm python:2 pip install make.bat

test-pip-install-py3:
	docker run --rm python:3 pip install make.bat

.PHONY: test
test: build


## -----
## Units
## -----
unit-docker-compose:
	docker-compose up -d
	docker-compose ps
	docker-compose down

unit-bash:
	bash

unit-envsubst:
	echo 'MAKEBAT_CONTAINER_ID: ${MAKEBAT_CONTAINER_ID}' | envsubst
