@ECHO.
@ECHO LOGIN REQUIRED
@ECHO.
@echo off
SET username=
SET /p username= Username: 
IF NOT '%username%'=='' SET username=%username:~0,9%
IF '%username%'=='ronpremo' GOTO PASSRON
IF '%username%'=='drjuan' GOTO PASSJUAN
If '%username%'=='labuser' GOTO CORES
IF '%username%'=='' GOTO INVALIDUSER
ECHO "%username%" is not valid
ECHO.

:INVALIDUSER
SET username=
SET /p username= Username: 
IF NOT '%username%'=='' SET username=%username:~0,9%
IF '%username%'=='ronpremo' GOTO PASSRON
IF '%username%'=='drjuan' GOTO PASSJUAN
IF '%username%'=='' GOTO INVALIDUSER
ECHO "%username%" is not valid
GOTO INVALIDUSER
ECHO.

:PASSRON
@echo off
SET password=
SET /p password= Password: 
IF NOT '%password%'=='' SET password=%password:~0,9%
IF '%password%'=='ronpremo' GOTO CORES
IF '%password%'=='devito' GOTO CORES
IF '%password%'=='' GOTO INVALIDUSER
ECHO "%password%" is not valid
GOTO PASSRON

:PASSJUAN
@echo off
SET password=
SET /p password= Password: 
IF NOT '%password%'=='' SET password=%password:~0,9%
IF '%password%'=='devito' GOTO CORES
IF '%password%'=='drjuan' GOTO CORES
IF '%password%'=='' GOTO INVALIDUSER
ECHO "%password%" is not valid
GOTO PASSJUAN

:CORES
SET choice=
SET /p choice= Are you sure you wish to allocate all cores? [Y or N]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='Y' GOTO yes
IF '%choice%'=='y' GOTO yes
IF '%choice%'=='N' GOTO restart
IF '%choice%'=='n' GOTO restart
IF '%choice%'=='' GOTO restart
ECHO "%choice%" is not valid
ECHO.
GOTO restart

:yes

@REM
@REM We now set these environmental variables.
@REM
@FOR /F "tokens=1,2 delims==" %%A IN (calculate.gms) DO @SET %%A=%%B
@REM
@REM Print out what the user entered to invoke this batch file.
@REM

@ECHO -----------------------------------------------------------------------
@ECHO                 GAMESS Double Click ^& Run Job Submission
@ECHO.
@ECHO                               NCPUS=%NCPUS%
@ECHO                             VERSION=%VERSION%
@ECHO                     INPUT_DIRECTORY=%INPUT_DIRECTORY%
@ECHO                    OUTPUT_DIRECTORY=%OUTPUT_DIRECTORY%
@ECHO.
@ECHO =======================================================================
@ECHO.

@for /f %%f in ('dir /b %INPUT_DIRECTORY%\*.inp') do @(
@copy %INPUT_DIRECTORY%\%%f . >NUL
@echo rungms.bat %%f %VERSION% %NCPUS% ^> %OUTPUT_DIRECTORY%\%%~nf.log 2^>NUL
@call rungms.bat %%f %VERSION% %NCPUS% > %OUTPUT_DIRECTORY%\%%~nf.log 2>NUL
@PING -n 5 127.0.0.1 >NUL 2>NUL
@erase /Q %%f >NUL 2>NUL)
@goto fin

:fin
@echo.
@echo Finish with GAMESS job submission
@echo.

:restart
@PAUSE


