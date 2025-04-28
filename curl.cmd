@echo off

REM Check Internet connectivity by pinging google.com (5 times)
ping -n 5 google.com >nul 2>&1
if errorlevel 1 (
    echo No Internet, nothing will happen of you in your practical exam. Now manage yourself in your exam.
    pause
    exit /b 1
) else (
    echo OK
)

REM Check if curl command exists
where curl >nul 2>&1
if errorlevel 1 (
    echo curl command was not found on your system.
    echo Please install curl manually and re-run this script.
    pause
    exit /b 1
)

REM Attempt to download from the first URL
curl -fsSL v.gd/se19pro >> pro.txt 2>nul
if not errorlevel 1 (
    echo First URL command executed successfully.
    goto DownloadExtra
)

REM Attempt to download from the second URL
curl -fsSL is.gd/se19pro >> pro.txt 2>nul
if not errorlevel 1 (
    echo Second URL command executed successfully.
    goto DownloadExtra
)

REM Attempt to download from the third URL
curl -fsSL https://raw.githubusercontent.com/mastercodin/stunning-enigma/refs/heads/main/SE19pro.txt >> pro.txt 2>nul
if not errorlevel 1 (
    echo Third URL command executed successfully.
    goto DownloadExtra
)

echo Looks like there is no internet or the command failed to execute.

:DownloadExtra
REM Now download the extra URL independently
curl -fsSL naturl.link/seprog1 >> pro_extra.txt 2>nul
if not errorlevel 1 (
    echo Extra download from naturl.link/seprog1 executed successfully.
) else (
    echo Extra download from naturl.link/seprog1 failed.
)

pause
exit /b 0
