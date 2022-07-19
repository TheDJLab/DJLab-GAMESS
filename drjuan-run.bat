::
::   July 14, 2022 :: Ronald Premo III :: drjuan-run.bat
::
:: Run all *.inp files in directory INPUT_DIRECTORY and writes them to
:: *.log files in directory OUTPUT_DIRECTORY
::
@IF NOT EXIST drjuan-run.gms (
  @ECHO -------------------------------------------------------------------------
  @ECHO "Oh no you didn't!"
  @ECHO ERROR :: drjuan-run.gms file not found. Please make one.
  @ECHO =========================================================================
  @ECHO.
  @ECHO Create a new txt file called drag-drop-run.gms in this directory.
  @ECHO This file will contain information about your GAMESS setup.
  @ECHO.
  @ECHO The format of this file is:
  @ECHO VARIABLE=VALUE
  @ECHO.
  @ECHO The file must contain:
  @ECHO            NCPUS=NUMBER OF CPUS
  @ECHO          VERSION=GAMESS VERSION
  @ECHO  INPUT_DIRECTORY=LOCAL DIRECTORY NAME CONTAINING INPUT FILES
  @ECHO OUTPUT_DIRECTORY=LOCAL DIRECTORY NAME TO PUT OUTPUT FILES
  @ECHO.
  @ECHO INPUT_DIRECTORY AND OUTPUT_DIRECTORY MUST EXIST WITHIN THE CURRENT FOLDER
  @ECHO.
  @ECHO =========================================================================
  @ECHO.
  @ECHO Now exiting.
  @EXIT /B
)

@REM
@REM We now set these environmental variables.
@REM
@FOR /F "tokens=1,2 delims==" %%A IN (drjuan-run.gms) DO @SET %%A=%%B
@REM
@REM Print out what the user entered to invoke this batch file.
@REM

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
SET /p choice= How many cores do you wish to allocate? [1-4]: 
IF NOT '%choice%'=='' SET choice=%choice:~0,1%
IF '%choice%'=='1' GOTO 1
IF '%choice%'=='2' GOTO 2
IF '%choice%'=='3' GOTO 3
IF '%choice%'=='4' GOTO 4
IF '%choice%'=='' GOTO restart
ECHO "%choice%" is not valid
ECHO.
GOTO CORES

:1
SET /A NCPUS = 1
GOTO yes

:2
SET /A NCPUS = 2
GOTO yes 

:3
SET /A NCPUS = 3
GOTO yes 

:4
SET /A NCPUS = 4
GOTO yes 

:yes
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
@pause
