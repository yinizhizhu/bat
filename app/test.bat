@echo off
set a=wearethechampion
set b=wearetheworld
call strcat.bat %a% %b%
echo %strcat%
call strlen.bat %a%
echo num=%num%

call strlen.bat %b%
echo num=%num%

call strlen.bat %strcat%
echo num=%num%

echo a.abc>a.txt
echo The a.txt is: 
type a.txt

echo a.abc>a.txt
echo The a.txt is: 
type a.txt

echo a.abc>a.txt
echo The a.txt is: 
type a.txt

echo a.abc>>a.txt
echo The a.txt is: 
type a.txt

echo a.abc>>a.txt
echo The a.txt is: 
type a.txt

echo %CD%

echo %DATE%

echo %TIME%

echo %RANDOM%

echo %CMDEXTVERSION%

echo %CMDCMDLINE%

echo %0

echo %~dp0

echo %COMPUTERNAME%

