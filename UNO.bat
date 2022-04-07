@echo off
cls
setlocal EnableDelayedExpansion
echo.
echo.
:pri
echo.
echo  ллллллллллллл
echo  л           л
echo  л   Jugar   л
echo  л           л
echo  ллллллллллллл
echo.
echo   Salir
echo.
set button1=2 4 12 6
set button2=1 9 7 9
Data\DependenciesEXE\GetInput.exe /M %button1% %button2% /H 17 47
call Data\DependenciesEXE\GetInput_MouseClickerBatch.bat
echo er=%errorlevel%
if %errorlevel% == 1 call Data\game.bat
if %errorlevel% == 2 exit
goto pri