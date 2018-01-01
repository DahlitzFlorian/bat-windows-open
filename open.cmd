@ECHO OFF

set programsfile=%~dp0\programs.txt

if "%1"=="-s" GOTO ShowKeys
set params=
set k=0

:Loop
IF "%1"=="" GOTO Continue
IF %k%==0 ( 
    set params=%1
    set k=1
    GOTO AfterFirst
    )
set params=%params% %1

:AfterFirst
SHIFT
GOTO Loop

:Continue
start "" "open_helper.py" %params%
GOTO End

:ShowKeys
@ECHO ----------
FOR /F "tokens=* delims= " %%i in (%programsfile%) DO (
    set line=%%i
    call :processToken
    )
@ECHO ----------

:processToken
    FOR /F "tokens=1* delims=-" %%j in ("%line%") DO @ECHO %%j

:End