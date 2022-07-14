:: Developed by Ronald F. Premo III on July 7, 2022.
@echo -------------------------------------------------------------------------

@echo   .g8"""bgd       db      `7MMM.     ,MMF'`7MM"""YMM   .M"""bgd  .M"""bgd
@echo .dP'     `M      ;MM:       MMMb    dPMM    MM    `7  ,MI    "Y ,MI    "Y
@echo dM'       `     ,V^MML      M YM   ,M MM    MM   d    `MMb.     `MMb.
@echo MM             ,M  `MM      M  Mb  M' MM    MMmmMM      `YMMNq.   `YMMNq.
@echo MM.    `7MMF'  A     MA     M  YM.P'  MM    MM   Y  , .     `MM .     `MM
@echo `Mb.     MM   A'     VML    M  `YM'   MM    MM     ,M Mb     dM Mb     dM
@echo   `"bmmm!GO .RED.    .SOX!.JML. `'  .JMML..JMMmmmmMMM P"Ybmmd"  P"Ybmmd"

@echo -------------------------------------------------------------------------
@echo.
@echo Login with your username and password
@echo.

@echo off
SET username=
SET /p username= Username: 
IF NOT '%username%'=='' SET username=%username:~0,9%
IF '%username%'=='ronpremo' GOTO PASSRON
IF '%username%'=='drjuan' GOTO PASSJUAN
If '%username%'=='labuser' GOTO LABUSERHOME
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
IF '%password%'=='ronpremo' GOTO HOMERON
IF '%password%'=='devito' GOTO HOMERON
IF '%password%'=='' GOTO INVALIDUSER
ECHO "%password%" is not valid
GOTO PASSRON

:PASSJUAN
@echo off
SET password=
SET /p password= Password: 
IF NOT '%password%'=='' SET password=%password:~0,9%
IF '%password%'=='devito' GOTO HOMEJUAN
IF '%password%'=='drjuan' GOTO HOMEJUAN
IF '%password%'=='' GOTO INVALIDUSER
ECHO "%password%" is not valid
GOTO PASSJUAN


:HOMERON
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo -------------------------------------------------------------------------

@echo   .g8"""bgd       db      `7MMM.     ,MMF'`7MM"""YMM   .M"""bgd  .M"""bgd
@echo .dP'     `M      ;MM:       MMMb    dPMM    MM    `7  ,MI    "Y ,MI    "Y
@echo dM'       `     ,V^MML      M YM   ,M MM    MM   d    `MMb.     `MMb.
@echo MM             ,M  `MM      M  Mb  M' MM    MMmmMM      `YMMNq.   `YMMNq.
@echo MM.    `7MMF'  A     MA     M  YM.P'  MM    MM   Y  , .     `MM .     `MM
@echo `Mb.     MM   A'     VML    M  `YM'   MM    MM     ,M Mb     dM Mb     dM
@echo   `"bmmm!GO .RED.    .SOX!.JML. `'  .JMML..JMMmmmmMMM P"Ybmmd"  P"Ybmmd"

@echo -------------------------------------------------------------------------
@echo.
@echo Hello Ronnie! Welcome to the Dr. Juan Research Lab GAMESS Portal!
@echo.
@echo Prompt             Action
@echo =========================================================================
@echo username-run.bat   Replace "username" with your username to run all 
@echo                    .inp files in your personal input directory. log
@echo                    output files can be found in your personal output
@echo                    directory. NCPUS=16 for this program. 
@echo.             
@echo.                 
@echo calculate.bat      This program will run all .inp files in the "inputs"
@echo                    folder. NCPUS=32 for this program. 
@echo                    MAKE SURE NO OTHER CALCULATIONS ARE ACTIVE 
@echo                    BEFORE RUNALL :)
@echo.
@echo.
@echo.
@echo.
GOTO BEGINNING

:HOMEJUAN
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo -------------------------------------------------------------------------

@echo   .g8"""bgd       db      `7MMM.     ,MMF'`7MM"""YMM   .M"""bgd  .M"""bgd
@echo .dP'     `M      ;MM:       MMMb    dPMM    MM    `7  ,MI    "Y ,MI    "Y
@echo dM'       `     ,V^MML      M YM   ,M MM    MM   d    `MMb.     `MMb.
@echo MM             ,M  `MM      M  Mb  M' MM    MMmmMM      `YMMNq.   `YMMNq.
@echo MM.    `7MMF'  A     MA     M  YM.P'  MM    MM   Y  , .     `MM .     `MM
@echo `Mb.     MM   A'     VML    M  `YM'   MM    MM     ,M Mb     dM Mb     dM
@echo   `"bmmm!GO .RED.    .SOX!.JML. `'  .JMML..JMMmmmmMMM P"Ybmmd"  P"Ybmmd"

@echo -------------------------------------------------------------------------
@echo.
@echo Hello Professor! Welcome to YOUR!!! Research Lab GAMESS Portal!
@echo.
@echo Prompt             Action
@echo =========================================================================
@echo username-run.bat   Replace "username" with your username to run all 
@echo                    .inp files in your personal input directory. log
@echo                    output files can be found in your personal output
@echo                    directory. NCPUS=16 for this program. 
@echo.             
@echo.                 
@echo calculate.bat      This program will run all .inp files in the "inputs"
@echo                    folder. NCPUS=32 for this program. 
@echo                    MAKE SURE NO OTHER CALCULATIONS ARE ACTIVE 
@echo                    BEFORE RUNALL :)
@echo.
@echo.
@echo.
@echo.
GOTO BEGINNING

:LABUSERHOME
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo.
@echo -------------------------------------------------------------------------

@echo   .g8"""bgd       db      `7MMM.     ,MMF'`7MM"""YMM   .M"""bgd  .M"""bgd
@echo .dP'     `M      ;MM:       MMMb    dPMM    MM    `7  ,MI    "Y ,MI    "Y
@echo dM'       `     ,V^MML      M YM   ,M MM    MM   d    `MMb.     `MMb.
@echo MM             ,M  `MM      M  Mb  M' MM    MMmmMM      `YMMNq.   `YMMNq.
@echo MM.    `7MMF'  A     MA     M  YM.P'  MM    MM   Y  , .     `MM .     `MM
@echo `Mb.     MM   A'     VML    M  `YM'   MM    MM     ,M Mb     dM Mb     dM
@echo   `"bmmm!GO .RED.    .SOX!.JML. `'  .JMML..JMMmmmmMMM P"Ybmmd"  P"Ybmmd"

@echo -------------------------------------------------------------------------
@echo.
@echo Welcome to the Dr. Juan Research Lab GAMESS Portal!
@echo.
@echo Prompt             Action
@echo =========================================================================
@echo labuser-run.bat    Run all .inp files in the labuser input directory.
@echo                    log output files can be found in the labuser_output
@echo                    folder. NCPUS=8 for this program. 
@echo.             
@echo.                 
@echo calculate.bat      This program will run all .inp files in the "inputs"
@echo                    folder. NCPUS=32 for this program. 
@echo                    MAKE SURE NO OTHER CALCULATIONS ARE ACTIVE 
@echo                    BEFORE RUNALL :)
@echo.
@echo.
@echo.
@echo.
GOTO BEGINNING

:BEGINNING
@PAUSE