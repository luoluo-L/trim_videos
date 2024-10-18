@echo off
setlocal enabledelayedexpansion

rem Check if the CSV file argument is provided
if "%~1"=="" (
    echo Usage: %0 csv_file
    exit /b 1
)

rem Input CSV file from the first command-line argument
set "CSV_FILE=%~1"

rem Open the CSV file for reading
for /f "skip=1 tokens=1,2,3,4 delims=," %%A in (%CSV_FILE%) do (
    set "input_file=%%A"
    set "start_time=%%B"
    set "end_time=%%C"
    set "output_file=%%D"
    
    rem Remove possible quotes from the variables
    set "input_file=!input_file:"=!"
    set "start_time=!start_time:"=!"
    set "end_time=!end_time:"=!"
    set "output_file=!output_file:"=!"
    
    rem Call FFmpeg to process the file
    echo Processing !input_file! from !start_time! to !end_time!, saving to !output_file!
    ffmpeg -i "!input_file!" -ss !start_time! -to !end_time! -c copy "!output_file!"
)

endlocal