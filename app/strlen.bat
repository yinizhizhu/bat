@echo off
set str=%1
set num=0
:next
if not "%str%"=="" (
    set /a num+=1
    set str=%str:~1%
    goto next
)
rem echo "%str1%"�ַ����ĳ���Ϊ:%num%