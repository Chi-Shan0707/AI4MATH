@echo off
setlocal

SET litex_path=%~dp0
IF "%litex_path:~-1%"=="\" SET litex_path=%litex_path:~0,-1%

set "oldpath="
for /f "tokens=2,*" %%A in ('reg query "HKCU\Environment" /v PATH 2^>nul') do (
    set "oldpath=%%B"
)

echo %oldpath% | find /I "%litex_path%" >nul
if %ERRORLEVEL% EQU 0 (
    goto :end
)

if "%oldpath%"=="" (
    set "newpath=%litex_path%"
) else (
    set "newpath=%litex_path%;%oldpath%"
)

setx PATH "%newpath%"

:end
endlocal
exit /b 0
