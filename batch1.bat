@ECHO OFF

REM This batch script obtains information based on a computer name

ECHO Please enter a computer name
SET /p computerid =
If %computerid% == area51 GOTO :area51 

wmic /node:%computerid% bios get serialnumber
systeminfo /s %computerid%

GOTO END

:area51
CLS
ECHO.Unable to run this command on this PC
PAUSE
EXIT

:END
PAUSE
EXIT 