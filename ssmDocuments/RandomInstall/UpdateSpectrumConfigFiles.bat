REM UpdateSpectrumConfigFiles.bat
SETLOCAL

REM Copy files begin

set CurrentFile=spectrum-container.properties

MOVE "C:\Program Files\Pitney Bowes\Spectrum\server\conf\spectrum-container.properties" "C:\Program Files\Pitney Bowes\Spectrum\server\conf\spectrum-container_bckup.properties_bckup"
if %ERRORLEVEL% NEQ 0 goto ERROR1

copy C:\migration\spectrum-container.properties "C:\Program Files\Pitney Bowes\Spectrum\server\conf\spectrum-container.properties"

if %ERRORLEVEL% NEQ 0 goto ERROR2


if %ERRORLEVEL% EQU 0 goto SUCCESS


:ERROR1
ECHO [%Date% - %Time%] Error Level: %ERRORLEVEL% ERROR: Moved spectrum-container.properties failed > C:\migration\UpdateSpectrumConfigFiles.log
exit /b 1

:ERROR2
ECHO [%Date% - %Time%] Error Level: %ERRORLEVEL% ERROR: Copied spectrum-container.properties failed > C:\migration\UpdateSpectrumConfigFiles.log
exit /b 1

:SUCCESS
ECHO [%Date% - %Time%] INFO: Copied spectrum-container.properties successful> C:\migration\UpdateSpectrumConfigFiles.log

