@echo off

set VOL1=//var/run/docker.sock:/var/run/docker.sock
set VOL2=//usr/bin/docker:/usr/bin/docker

call docker run --rm -v "%CD%:/pwd" -v "%VOL1%" -v "%VOL2%" javanile/pwd > .pwd.var

set /p PWD=<.pwd.var
del .pwd.var

call docker run -ti --rm -w "%PWD%" ^
    -v "%CD%:%PWD%" -v "%VOL1%" -v "%VOL2%" ^
    -e "WINDOWS_VOLUME=%CD%:%PWD%" javanile/make.bat:20 %*
