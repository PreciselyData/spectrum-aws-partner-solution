REM Rename the existing Spectrum repository
MOVE C:\spectrum\repository\data\databases\graph.db C:\spectrum\repository\data\databases\graph1.db1
REM Unzip backup 
unzip -o "C:\backup\backup.zip"
REM Copy backup graph.db to \spectrum\repository\data\databases
xcopy C:\backup\graph.db C:\spectrum\repository\data\databases /s /e
if errorlevel 4 goto lowmemory
if errorlevel 2 goto abort
if errorlevel 0 goto exit
:lowmemory
echo Insufficient memory to copy files or invalid drive or command-line syntax.
goto exit
:abort
echo You pressed CTRL+C to end the copy operation.
goto exit
:exit


