# Make.bat

![Lint Code Base](https://github.com/javanile/make.bat/workflows/Lint%20Code%20Base/badge.svg)

Make for Windows ignited by Docker
 
## Requirements

* Docker for Windows: https://docs.docker.com/docker-for-windows/install/ 

## Installation

```cmd
C:\Users\SamSepiol> pip install make.bat
```

## Usage

As a standard GNU Make simply you  

```cmd
C:\Users\SamSepiol\MrProject> make 
```

## Documentation

## Alternative installation

### NodeJS

#### Requirements

* Docker for Windows: https://docs.docker.com/docker-for-windows/install/ 
* NodeJS for Windows: https://nodejs.org/en/download/

#### Installation

```cmd
C:\Users\SamSepiol> npm install -g make.bat
```

### Manual setup

```
%USERPROFILE%\AppData\Local\Microsoft\WindowsApps
```

## Development

```bash
docker run
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker
```
