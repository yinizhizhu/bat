@echo off
::for /r /d %%d in (*.*) do if exist "%%d/*.*" echo %%d >>content.txt
for /f %%i in ('"dir /a /s /b *.*"') do call :next "%%i"
pause
goto :eof

:next
set jpg=%1
set cd1=%cd:/=/%
set jpg=%jpg:/=/%
rem echo %%jpg:%cd1%=%% | findstr .
for /f %%j in ('"echo %%jpg:%cd1%=%% | findstr . "') do set last=%%j
set last=%last:"=%
call :checkFD %last%
echo %last% >> content.txt
goto :eof


:checkFD
if exist "%~f1/" echo %1>>directory.txt
if exist "%~f1" if not exist "%~f1/" echo %1>>file.txt
goto :EOF