@echo off
setlocal


set ffmpeg_path="L:\Netflix\_TOOLS\DubCardGen\_BETA\DubbingCredit_1.9.37\ffmpeg.exe"


set video_file="%~1"

%ffmpeg_path% -i %video_file% -vf "blackdetect=d=10:pix_th=0.00" -f null - 

if %errorlevel% equ 0 (
    echo No black Frames detected.
) else (
    echo Black Frames detected.
)

endlocal


echo ##Done!
echo.
pause