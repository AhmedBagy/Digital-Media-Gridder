@echo off
setlocal

REM Path to the FFmpeg executable
set ffmpeg_path="L:\Netflix\_TOOLS\DubCardGen\_BETA\DubbingCredit_1.9.37\ffmpeg.exe"

REM Path to the video file
set video_file="%~1"

%ffmpeg_path% -i %video_file% -vf "crop=iw:ih/20:0:0, blackdetect=d=10:pix_th=0.00" -f null - 

if %errorlevel% equ 0 (
    echo No black bars detected.
) else (
    echo Black bars detected.
)

endlocal


echo ##Done!
echo.
pause