@ECHO GAMESS DIRECTORY
@ECHO.
@ECHO Prompt                   Action
@ECHO =========================================================================
@ECHO calculate.bat            This will run all .inp files in the input folder
@echo                          and store .log files in the output folder
@echo                          NCPUS = 4
@echo.
@echo clean-runall-files.bat   Removes exam log, scratch, and restart files.
@echo.
@echo create-parameters.bat    Creates rungms.gms parameter file needed by
@echo                          the rungms.bat batch script.
@echo.
@echo directory.bat            Congrats! You found it.
@echo. 
@echo double-click-run.bat     Run all *.inp files from the input folder and
@echo                          store log files in output folder defined in 
@echo                          double-click-run.gms. NCPUS = 1
@echo.
@echo drag-drop-run.bat        Script that accomodates drag-and-drop of *.inp
@echo                          files. Uses [ncpus] and [version] defined in
@echo                          drag-drop-run.gms
@echo.
@echo exit                     Self explainatory. Find a dictionary for further
@echo                          information.
@echo.
@echo get-version-names.bat    List available GAMESS binaries and version names
@echo.
@echo labuser-run.bat          Runs all .inp files stored in the labuser input
@echo                          directory. Program will ask how many CPUs 
@echo                          required. NCPUS = 1-4
@echo.
@echo login.bat                This will take you back to the login page.
@echo.
@echo runall.bat [version] [ncpus]
@echo                          Run exam files in either serial or parallel
@echo.
@echo rungms.bat [input] [version] [ncpus] [logfile]
@echo                          Run a GAMESS calculation
@echo.
@echo username-run.bat         If you have a GAMESS profile, replace "username"
@echo                          with your username to run all .inp files in 
@echo                          your personal input directory. 
@PAUSE
