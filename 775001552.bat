@ECHO.
@ECHO Calculating...

@REM
@REM We now set these environmental variables.
@REM
@FOR /F "tokens=1,2 delims==" %%A IN (ronpremo-run.gms) DO @SET %%A=%%B
@REM
@REM Print out what the user entered to invoke this batch file.
@REM

@ECHO -----------------------------------------------------------------------
@ECHO                        RISE LAB GAMESS Job Submission
@ECHO.
@ECHO                               NCPUS=%NCPUS%
@ECHO                             VERSION=%VERSION%
@ECHO                     INPUT_DIRECTORY=%INPUT_DIRECTORY%
@ECHO                    OUTPUT_DIRECTORY=%OUTPUT_DIRECTORY%
@ECHO.
@ECHO =======================================================================
@ECHO.

@set /A _tic=%time:~0,2%*3600^
            +%time:~3,1%*10*60^
            +%time:~4,1%*60^
            +%time:~6,1%*10^
            +%time:~7,1% >nul

@for /f %%f in ('dir /b %INPUT_DIRECTORY%\*.inp') do @(
@copy %INPUT_DIRECTORY%\%%f . >NUL
@echo Running GAMESS Job: %%f in progress
@call rungms.bat %%f %VERSION% %NCPUS% > %OUTPUT_DIRECTORY%\%%~nf.log 2>NUL
@PING -n 5 127.0.0.1 >NUL 2>NUL
@erase /Q %%f >NUL 2>NUL)

@set /A _toc=%time:~0,2%*3600^
            +%time:~3,1%*10*60^
            +%time:~4,1%*60^
            +%time:~6,1%*10^
            +%time:~7,1% >nul

@set /A _elapsed=%_toc%-%_tic



@goto fin

:fin
@echo.
@echo GAMESS Job Submission Complete in %_elapsed% seconds.
@echo.

:restart
@PAUSE


