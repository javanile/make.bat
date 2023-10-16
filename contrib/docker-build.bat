@echo off

set MAKE=javanile/make.bat:20

cd docker

docker build --progress=plain --tag "%MAKE%" .
docker run --rm "%MAKE%" --version

cd ..
