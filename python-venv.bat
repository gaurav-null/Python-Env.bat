@echo off
set /p projpath=Enter your project path ( O_O)?:
cd "%projpath%" || (
    echo Invalid path!
    pause
    exit /b
)
python -m venv .venv
echo Virtual environment created in %projpath%\.venv
set /p userValue=Want to pythonEnv? (y/n):
IF "%userValue%" == "y" (
    call .venv\Scripts\activate.bat
    echo entering the venv
    code .
 ) ELSE (
    exit
 )
pause
