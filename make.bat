@echo off

docker run -it --rm ^
    -e "MAKE_CWD=%CD%" ^
	-v "%CD%:/make" ^
    -v //var/run/docker.sock:/var/run/docker.sock ^
    -v //usr/bin/docker:/usr/bin/docker ^
    javanile/make.bat %*
