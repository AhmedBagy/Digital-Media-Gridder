@echo off
cd /d "%~dp0"

set "ffprobe_path=L:\Netflix\_TOOLS\DubCardGen\_BETA\_Testing_Bagy\ffprobe.exe"

REM Check if any file paths were provided via drag and drop
IF "%~1"=="" (
    echo No files provided!
    pause
    exit /b 1
)

FOR %%A IN (%*) DO (
    echo Processing "%%~A"...
echo | set /p=file_ratio: & "%ffprobe_path%" -v error -select_streams v:0 -show_entries stream=display_aspect_ratio -of default=noprint_wrappers=1:nokey=1 "%%~A"

    echo File Name: "%%~nxA"
    echo ------------------------
)

echo ##Done!
echo.
pause
