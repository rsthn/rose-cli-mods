@echo off
if "%1"=="cd" goto :cd
rose repo %*
goto :end

:cd
call rose -i "(concat 'cd ' (trim (sys:shell 'rose repo cd %2')))" >%~dp0repo_.bat
call repo_
echo.

:end
