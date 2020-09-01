@echo off

docker run --rm -v "%CD%:/make" javanile/make.bat --docker-compose-make
docker-compose -f docker-compose-make run --rm make --docker-get-host-pwd
del docker-compose-make

docker run -it --rm ^
    -e "HOST_PWD=%CD%" ^
	-v "%CD%:/make" ^
    -v //var/run/docker.sock:/var/run/docker.sock ^
    -v //usr/bin/docker:/usr/bin/docker ^
    javanile/make.bat %*
