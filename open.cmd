@ECHO OFF
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