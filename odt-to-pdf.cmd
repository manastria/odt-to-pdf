@echo off

REM This command changes the code page to UTF-8 for better character support
chcp 65001 > nul

setlocal

REM Set the path to LibreOffice installation folder
set libreoffice_path=C:\Program Files\LibreOffice\program

REM If LibreOffice is not installed, then exit the script with an error code of 1
if not exist "%libreoffice_path%\soffice.exe" (
    echo LibreOffice is not installed on this system.
    exit /b 1
)

REM Set input and output file extensions
set input_extension=odt
set output_extension=pdf

REM Set a counter variable to keep track of the number of successfully converted files
set count=0

REM Loop through all the files with the input file extension in the current directory
for %%f in (*.%input_extension%) do (
    echo Converting "%%f" to "%output_extension%"...

    REM Convert the input file to the output file using LibreOffice
    "%libreoffice_path%\swriter.exe" --headless --convert-to %output_extension% "%%f"

    REM If the conversion failed, print an error message
    if errorlevel 1 (
        echo The conversion of "%%f" failed.
    ) else (
        REM Otherwise, increment the counter variable
        set /a count+=1
    )
)

REM Print the total number of successfully converted files
echo %count% files were converted successfully.

REM Wait for the user to press a key before closing the window
echo Press a key to close the window...
pause > nul

endlocal

REM Exit the script with a success code of 0
exit /b 0
