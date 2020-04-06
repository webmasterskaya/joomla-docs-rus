@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

if "%SPHINXBUILD%" == "" (
	set SPHINXBUILD=sphinx-build
)
set SOURCEDIR=source
set BUILDDIR=.

if "%1" == "" goto help

%SPHINXBUILD% >NUL 2>NUL
if errorlevel 9009 (
	echo.
	echo.The 'sphinx-build' command was not found. Make sure you have Sphinx
	echo.installed, then set the SPHINXBUILD environment variable to point
	echo.to the full path of the 'sphinx-build' executable. Alternatively you
	echo.may add the Sphinx directory to PATH.
	echo.
	echo.If you don't have Sphinx installed, grab it from
	echo.http://sphinx-doc.org/
	exit /b 1
)

call :parsephpdoc && call %SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O% && if "%1" == "html" call :htmltodocs
goto end

:help
%SPHINXBUILD% -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:htmltodocs
del /s /f /q .\docs\*.*
for /f %%f in ('dir /ad /b .\docs\') do rd /s /q .\docs\%%f
rd /s /q .\docs
echo. 2>.\html\.nojekyll
Rename html docs
exit /B

:parsephpdoc
call .\vendor\bin\sphpdox process "Joomla\CMS" .\joomla-cms\libraries\src -o .\source
exit /B

:end
popd
