@echo off  
  
::��ʼ������  
set str1=This is string1
set str2=This is string2
set str3=This is string3
  
::�ȴ�ӡ��ԭʼ����  
echo str1=%str1%
echo str2=%str2%
echo str3=%str3%
  
  
::����strcpy����һ���ַ������Ƶ���һ���ַ���ָ����ַ����飬����ԭ�����ַ���  
::ʵ�ַ�����set Ŀ���ַ���=%Դ�ַ���%  
echo.  
echo -----------------------------------------------  
set strcpy=%str1%
echo strcpy=%strcpy%
  
  
::����strcat����һ���ַ������ӵ���һ���ַ���ָ����ַ������ĩβ��  
::ʵ�ַ�����set Ŀ���ַ���=%Ŀ���ַ���%%Դ�ַ���%  
echo.  
echo -----------------------------------------------  
set strcat=%str1%%str2%
echo strcat=%strcat%
  
  
::�ַ�����ȡ��C��û�����ֺ�����  
::ʵ�ַ�����set Ŀ���ַ���=%Դ�ַ���:~��ʼֵ,��ȡ����%  
::ע�⣬��ʼֵ��0��ʼ��  
::��ȡ�����ǿ�ѡ�ģ����ʡ�Զ��źͽ�ȡ���ȣ��������ʼֵһֱ��ȡ���ַ����Ľ�β��  
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

::����strlen��ȡ���ַ����ĳ��ȡ�  
::ʵ�ַ���������goto�ͱ�ǩ���γ�ѭ���ṹ�����Ͻ��ַ����ض�1�ַ������ñ�����¼�ض̵Ĵ�����ֱ���ַ�����ɿմ�  
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
echo "%str1%"�ַ����ĳ���Ϊ:%num%
PAUSE