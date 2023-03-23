REM InstallSPDVH.bat
SETLOCAL

REM Use Windows batch echo command to write cli spectrum server connect command  to a file named cliConnect.cli
REM Get Spectrum hostname from hostname.txt 
set /p hostname=<C:/temp/spectrum-cli/hostname.txt
echo connect --h %hostname%:8080 --u admin --p admin >> cliConnect.cli
REM echo connect --h %hostname%:8080 --u admin --p admin --s true >> cliConnect.cli


REM  Use the Windows batch  type command to concatenate the content of cliConnect.cli and InstallSPDVH.cli  to InstallSPDVHrun.cli
type cliConnect.cli InstallSPDVH.cli > InstallSPDVHrun.cli
REM Run InstallSPDVHrun.bat which calls InstallSPDVHrun.cli
call C:/temp/spectrum-cli/InstallSPDVHrun.bat
