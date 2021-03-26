# Make.bat

![Lint Code Base](https://github.com/javanile/make.bat/workflows/Lint%20Code%20Base/badge.svg)

Make for Windows ignited by Docker
 
### Requirements

* Docker for Windows: https://docs.docker.com/docker-for-windows/install/ 

### Installation

For [PowerShell]() user

```powershell
PS C:\Users\SamSepiol> curl git.io/make.bat -o setup; .\setup
```

For [cmd.exe]() user

```sh
curl -fsSL https://deno.land/x/install/install.sh | sh
```

[Chocolatey](https://chocolatey.org/packages/deno) (Windows):

```powershell
choco install deno
```

[Scoop](https://scoop.sh/) (Windows):

```powershell
scoop install deno
```

For Python developer

```cmd
C:\Users\SamSepiol> pip install make.bat
```

For NodeJS developer 

```cmd
C:\Users\SamSepiol> npm install -g make.bat
```

For PHP developer 

```cmd
C:\Users\SamSepiol> npm install -g make.bat
```

### Usage

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
