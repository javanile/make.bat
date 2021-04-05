# Make.bat

![Lint Code Base](https://github.com/javanile/make.bat/workflows/Lint%20Code%20Base/badge.svg)

Make for Windows ignited by Docker

### Features

* Secure by default. No file, network, or environment access, unless explicitly enabled.
* Supports TypeScript out of the box.
* Ships only a single executable file.
* Built-in utilities like a dependency inspector (deno info) and a code formatter (deno fmt).
* Set of reviewed standard modules that are guaranteed to work with Deno.

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

For [Scoop](https://scoop.sh/) user:

```powershell
scoop bucket add javanile https://github.com/javanile/scoop-bucket.git
scoop install make.bat
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
C:\Users\SamSepiol> composer global require javanile/make.bat
```

### Usage

As a standard GNU Make simply you  

```cmd
C:\Users\SamSepiol\MrProject> make 
```

### Manual setup

Copy this file [make.bat](https://raw.githubusercontent.com/javanile/make.bat/master/make.bat) into the following directory

```
%USERPROFILE%\AppData\Local\Microsoft\WindowsApps
```

## Development

```bash
docker run
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /usr/bin/docker:/usr/bin/docker
```
