@echo off

docker run --rm ^
    -v "%CD%:/pwd" ^
    -v //var/run/docker.sock:/var/run/docker.sock ^
    -v //usr/bin/docker:/usr/bin/docker ^
    javanile/pwd

type pwd.var

docker-compose -f pwd.yml run --rm pwd

type pwd.var

docker run -it --rm ^
    -v %CD%:/make ^
    -v //var/run/docker.sock:/var/run/docker.sock ^
    -v //usr/bin/docker:/usr/bin/docker ^
    javanile/make.bat %*
