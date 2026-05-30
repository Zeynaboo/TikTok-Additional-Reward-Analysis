@echo off
setlocal
cd /d "%~dp0"

if not exist "tiktok_studio_export.ahk" (
  echo Script introuvable : tiktok_studio_export.ahk
  pause
  exit /b 1
)

start "" "tiktok_studio_export.ahk"
echo AutoHotkey lance.
echo F1 pour l'aide.
pause
