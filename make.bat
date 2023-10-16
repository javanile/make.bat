@echo off

docker run --rm ^
    -v "%CD%:/pwd" ^
    -v //var/run/docker.sock:/var/run/docker.sock ^
    -v //usr/bin/docker:/usr/bin/docker ^
    javanile/pwd > .pwd.var

set /p PWD=<.pwd.var
del .pwd.var

docker run -ti --rm ^
    -w "%PWD%" ^
    -v "%CD%:%PWD%" ^
    -v //var/run/docker.sock:/var/run/docker.sock ^
    -v //usr/bin/docker:/usr/bin/docker ^
    -e "WINDOWS_VOLUME=%CD%:%PWD%"
    javanile/make.bat:20 %*
