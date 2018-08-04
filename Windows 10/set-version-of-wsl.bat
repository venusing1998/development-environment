fltmc>nul&&(echo Yes)||(echo NO)
@echo off

:main
cls
color 0f
echo -----------------------------------------------------------
echo.
echo Please choose the version of WSL:
echo.
echo 1.Debian (Press 1)
echo.
echo 2.Ubuntu (Press 2)
echo.
echo 3.Ubuntu-18.04 (Press 3)
echo.
echo -----------------------------------------------------------

if exist "%SystemRoot%\System32\choice.exe" (
    goto Win7Choice
)
set /p choice=Press the number:
echo.
if %choice%==1 (
    goto Debian
)
if %choice%==2 (
    goto Ubuntu
)
if %choice%==3 (
    goto Ubuntu-18.04
)
cls
"set choice="
goto main

:Win7Choice
choice /c 123 /n /m "Press the number:"
if errorlevel 3 goto Ubuntu-18.04
if errorlevel 2 goto Ubuntu
if errorlevel 1 goto Debian
cls
goto main

:Debian
cls
color 0f
wslconfig /s Debian
echo.-----------------------------------------------------------
echo.
echo The version of WSL has switched to Debian.
echo.
echo.-----------------------------------------------------------
goto end

:Ubuntu
cls
color 0f
wslconfig /s Ubuntu
echo.-----------------------------------------------------------
echo.
echo The version of WSL has switched to Ubuntu.
echo.
echo.-----------------------------------------------------------
goto end

:Ubuntu-18.04
cls
color 0f
wslconfig /s Ubuntu-18.04
echo.-----------------------------------------------------------
echo.
echo The version of WSL has switched to Ubuntu-18.04.
echo.
echo.-----------------------------------------------------------
goto end

:end
echo Press any key to continue . . .
@Pause>nul