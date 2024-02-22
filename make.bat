@echo off

::
:: Make.bat
::
:: GNU Make for Windows ignited by Docker.
::
:: Copyright (c) 2020 Francesco Bianco <bianco@javanile.org>
::
:: Permission is hereby granted, free of charge, to any person obtaining a copy
:: of this software and associated documentation files (the "Software"), to deal
:: in the Software without restriction, including without limitation the rights
:: to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
:: copies of the Software, and to permit persons to whom the Software is
:: furnished to do so, subject to the following conditions:
::
:: The above copyright notice and this permission notice shall be included in all
:: copies or substantial portions of the Software.
::
:: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
:: IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
:: FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
:: AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
:: LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
:: OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
:: SOFTWARE.
::

set "MAKEBAT=javanile/make.bat:20"
set "VOLUME1=//var/run/docker.sock:/var/run/docker.sock"
set "VOLUME2=//usr/bin/docker:/usr/bin/docker"
set "PWD=%CD%"
set "PWD=%PWD:"=%"

for %%I in ("%PWD%.") do set "WORKDIR=/%%~nxI"

call docker run -ti --rm -w "%WORKDIR%" -v "%PWD%:%WORKDIR%" -v "%VOLUME1%" -v "%VOLUME2%" "%MAKEBAT%" %*
