REM dnmbasetableinstall.bat
SETLOCAL

REM Make sure that Spectrum™ Technology Platform is stopped before running script. 
REM Run script from /spectrum/server/bin directory

call c:\Windows\system32\cmd.exe java -jar "C:/Program Files/Pitney Bowes/Spectrum/server/bin/DataMgt-DataUnPacking-20.1.jar" C:/spectrumdata/datasets_spd cdq-AdvTransformer "C:/Program Files/Pitney Bowes/Spectrum/server/modules/cdqdb/library"
call c:\Windows\system32\cmd.exe java -jar C:/Program Files/Pitney Bowes/Spectrum/server/bin/DataMgt-DataUnPacking-20.1.jar" C:/spectrumdata/datasets_spd cdq-OpenParser  "C:/Program Files/Pitney Bowes/Spectrum/server/modules/cdqdb/library"
call c:\Windows\system32\cmd.exe java -jar "C:/Program Files/Pitney Bowes/Spectrum/server/bin/DataMgt-DataUnPacking-20.1.jar" C:/spectrumdata/datasets_spd cdq-TableLookup  "C:/Program Files/Pitney Bowes/Spectrum/server/modules/cdqdb/library"

if %ERRORLEVEL% NEQ 0 goto ERROR


if %ERRORLEVEL% EQU 0 goto SUCCESS




:ERROR
ECHO [%Date% - %Time%] Error Level: %ERRORLEVEL% ERROR: Install DNM Datasets failed > C:\migration\dnmbasetableinstall.log
exit /b 1

:SUCCESS
ECHO [%Date% - %Time%] INFO: Install DNM Datasets successful> C:\migration\dnmbasetableinstall.log
