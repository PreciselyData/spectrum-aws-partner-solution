REM patchesInstall.bat
SETLOCAL

REM Spectrum patch path with extracted tar files.
set /p patch_tar_path="C:\apps\pb\spectrum_patches\downloads"

REM Spectrum old jar file backup path
set /p patch_sp_bkp_path="C:\apps\pb\spectrum_backup\spectrum_patch_bkp"

REM Change directory to spectrum home path
set /p spectrum_path ="C:\apps\pb\spectrum"


REM Create sub-directories within the backup directory
mkdir "%patch_sp_bkp_path%\server\lib"
mkdir "%patch_sp_bkp_path%\server\deploy"
mkdir "%patch_sp_bkp_path%\server\modules"
mkdir "%patch_sp_bkp_path%\server\bin"
mkdir "%patch_sp_bkp_path%\server\exports"
mkdir "%patch_sp_bkp_path%\index"
mkdir "%patch_sp_bkp_path%\repository"

REM Copy all Spectrum resources that can possibly be patched into subdirectories
xcopy %spectrum_path%\server\lib\ %patch_sp_bkp_path%\server\
xcopy %spectrum_path%\server\deploy\ %patch_sp_bkp_path%\server\
xcopy %spectrum_path%\server\modules\ %patch_sp_bkp_path%\server\
xcopy %spectrum_path%\server\bin\ %patch_sp_bkp_path%\server\
xcopy %spectrum_path%\server\exports\ %patch_sp_bkp_path%\server\
xcopy %spectrum_path%\index\ %patch_sp_bkp_path%\
xcopy %spectrum_path%\repository\ %patch_sp_bkp_path%\

REM Change directory to spectrum home path
cd %spectrum_path%

REM Removes the directory Dir1 including all the files and subdirectories in it
REM rd /s /q "repository\"

REM Deploy new patch tar file

REM patch 2020.1.0 S01 
ECHO "Deploying S01 Patch"
REM unzip -o "%patch_tar_path%\cdq20201s01.zip"
tar.exe -xf "%patch_tar_path%\cdq20201s01.zip"

REM patch 2020.1.0 S03 
ECHO "Deploying S03 Patch"
REM unzip -o "%patch_tar_path%\cdq20201s03.zip"
tar.exe -xf "%patch_tar_path%\cdq20201s03.zip"

REM patch 2020.1.0 S05
ECHO "Deploying S05 Patch"
del %spectrum_path%\server\lib\modelstore-jdbc.jar
del %spectrum_path%\server\deploy\discovery-20.1.car
del %spectrum_path%\server\conf\spectrum-container.properties
unzip -o "%patch_tar_path%\cdq20201s05.zip"


if %ERRORLEVEL% NEQ 0 goto ERROR1

:ERROR1
ECHO [%Date% - %Time%] Error Level: %ERRORLEVEL% ERROR: Patch application failed > %patch_tar_path%\PatchApplication.log
exit /b 1