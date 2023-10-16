# 🐃 Make.bat

![Lint Code Base](https://github.com/javanile/make.bat/workflows/Lint%20Code%20Base/badge.svg)

GNU Make for Windows ignited by Docker

## Overview

Make.bat is a convenient Dockerized wrapper for GNU Make that enables you to seamlessly execute Makefiles on Windows without affecting the developer's user experience.

## Features

* Provides a hassle-free way to run GNU Make on Windows.
* Works transparently, preserving the native development environment.
* Avoids installation of GNU Make and related tools on the Windows system.
* Isolates Makefile execution within a Docker container.
* Easily customizable and extensible for specific project needs.

## Requirements

* Docker for Windows - <https://docs.docker.com/docker-for-windows/install/> 

## Installation

For [PowerShell](https://en.wikipedia.org/wiki/PowerShell) user

```shell
PS C:\Users\SamSepiol> curl get.javanile.org/make.ps1 -o setup.ps1; .\setup.ps1
```

For [cmd.exe](https://en.wikipedia.org/wiki/Cmd.exe) user

```sh
C:\Users\SamSepiol> curl get.javanile.org/make.bat -o setup.bat; .\setup.bat
```

For [Scoop](https://scoop.sh/) user:

```powershell
scoop bucket add javanile https://github.com/javanile/scoop-bucket.git
scoop install make.bat
```

For [Python](https://pypi.org/project/make.bat) developer

```cmd
C:\Users\SamSepiol> pip install make.bat
```

For [NodeJS](https://www.npmjs.com/package/make.bat) developer 

```cmd
C:\Users\SamSepiol> npm install -g make.bat
```

## Usage

As a standard GNU Make simply you run `make` command from your project directory  

```cmd
C:\Users\SamSepiol\MrProject> make 
```

## Manual setup

Copy this file [make.bat](https://raw.githubusercontent.com/javanile/make.bat/master/make.bat) into the following directory `%USERPROFILE%\AppData\Local\Microsoft\WindowsApps`

## Development

Clone repository the change files and run test with following command

```bash
make test
```

## License

This project is open-sourced software licensed under the MIT license.

## Feedback and Contributions

Feel free to report issues or contribute to this project on GitHub.

## Support

For questions or assistance, please contact our support team at bianco@javanile.org.

*Enjoy using Make.bat for your Windows development workflow!*
