@echo off
setlocal enabledelayedexpansion

rem Check if a file was dragged onto the script
if "%~1"=="" (
    echo Please drag an obfuscated file onto this script to deobfuscate.
    pause>nul
    exit /b
)

rem Check the file extension
set "fileExt=%~x1"
if /i "!fileExt!" neq ".bat" if /i "!fileExt!" neq ".cmd" (
    echo Invalid file format. Only .bat and .cmd files are supported.
    pause>nul
    exit /b
)

rem Perform deobfuscation
for /f "delims=" %%L in ('CMD /U /C Type "%~1"') do (
    echo %%L
    echo %%L >>"%~n1_deobfed%~x1"
)

echo Deobfuscation complete. Output saved to: !outputFile!
pause>nul
