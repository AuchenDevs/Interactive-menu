:::::::::
::Thats my most difficult project ever lol. | Edit after: It wasn't too hard how I was thinking
:::::::::
@echo off
title WASD Movement Choise System
set "col=1"
set "cate=1"
set "blue=[1;36m[1m"
set "gray=[37m"
echo [?25l
cls
:main
call :selector
choice /c WASD /n >nul
if %ERRORLEVEL%==1 (if not %col%==1 (set /a "col=%col%+1"))
if %ERRORLEVEL%==2 (if not %cate%==1 (set /a "cate=%cate%-1"))
if %ERRORLEVEL%==3 (if not %col%==1 (set /a "col=%col%+1"))
if %ERRORLEVEL%==4 (if not %cate%==4 (set /a "cate=%cate%+1"))
if "%debug%" neq "true" (title Debug ^| Categoria ^= %cate% ^| Columna: %col%)
goto main

:selector
echo [1;1f
if "%cate%"=="1" (echo %blue%Temporal%gray% - Windows - Services - Other) else (if "%cate%"=="2" (echo %gray%Temporal - %blue%Windows%gray% - Services - Other) else (if "%cate%"=="3" (echo %gray%Temporal - Windows - %blue%Services%gray% - Other) else (if "%cate%"=="4" (echo %gray%Temporal - Windows - Services - %blue%Other%gray%))))
echo.
echo Optimiser
echo.

echo xd
goto :eof
