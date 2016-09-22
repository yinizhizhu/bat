@echo off  
  
::初始化变量  
set str1=This is string1
set str2=This is string2
set str3=This is string3
  
::先打印出原始数据  
echo str1=%str1%
echo str2=%str2%
echo str3=%str3%
  
  
::类似strcpy，将一个字符串复制到另一个字符型指针或字符数组，覆盖原来的字符串  
::实现方法：set 目标字符串=%源字符串%  
echo.  
echo -----------------------------------------------  
set strcpy=%str1%
echo strcpy=%strcpy%
  
  
::类似strcat，将一个字符串连接到另一个字符型指针或字符数组的末尾。  
::实现方法：set 目标字符串=%目标字符串%%源字符串%  
echo.  
echo -----------------------------------------------  
set strcat=%str1%%str2%
echo strcat=%strcat%
  
  
::字符串截取，C中没有这种函数。  
::实现方法：set 目标字符串=%源字符串:~起始值,截取长度%  
::注意，起始值从0开始！  
::截取长度是可选的，如果省略逗号和截取长度，将会从起始值一直截取到字符串的结尾。  
echo.  
echo -----------------------------------------------  
set strInterception1=%str1:~0,4%
set strInterception2=%str1:~1,4%
set strInterception3=%str1:~5%
set strInterception4=%str1:~5,1%
  
echo strInterception1=%strInterception1%
echo strInterception2=%strInterception2%
echo strInterception3=%strInterception3%
echo strInterception4=%strInterception4%

::类似strlen，取得字符串的长度。  
::实现方法：利用goto和标签，形成循环结构，不断将字符串截短1字符，并用变量记录截短的次数，直到字符串变成空串  
echo.  
echo -----------------------------------------------  
echo %str1%
set str=%str1%
set num=0
:next
if not "%str%"=="" (
    set /a num+=1
    set str=%str:~1%
    goto next
)
echo "%str1%"字符串的长度为:%num%
PAUSE