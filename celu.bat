echo off
cls
color 0a
title "Moviendo archivos del celular..."
set "cdCel=%userprofile%\Desktop\Celu"

if exist "%userprofile%\Nox_share\Other\Download" (
cd "%userprofile%\Nox_share\Other\Download"
echo n | move -y "*.*" "%cdCel%\Download"
)

if exist "%userprofile%\Nox_share\Other\GBWhatsApp\Media" (
cd "%userprofile%\Nox_share\Other\GBWhatsApp\Media"
if exist ".Statuses" (move ".Statuses\*.*" "%cdCel%\WhatsApp\Media\.Statuses")
if exist "GBWhatsApp Profile Photos" (move "GBWhatsApp Profile Photos\*.*" "%cdCel%\WhatsApp\Media\WhatsApp Profile Photos")
if exist "GBWhatsApp Animated Gifs" (move "GBWhatsApp Animated Gifs\*.*" "%cdCel%\WhatsApp\Media\WhatsApp Animated Gifs")
if exist "GBWhatsApp Audio" (move "GBWhatsApp Audio\*.*" "%cdCel%\WhatsApp\Media\WhatsApp Audio")
if exist "GBWhatsApp Documents" (move "GBWhatsApp Documents\*.*" "%cdCel%\WhatsApp\Media\WhatsApp Documents")
if exist "GBWhatsApp Images" (move "GBWhatsApp Images\*.*" "%cdCel%\WhatsApp\Media\WhatsApp Images")
if exist "GBWhatsApp Video" (move "GBWhatsApp Video\*.*" "%cdCel%\WhatsApp\Media\WhatsApp Video")
cd "%userprofile%\Nox_share\Other"
rmdir /s /q GBWhatsApp
)

if exist "%userprofile%\Nox_share\Other\Telegram" (
cd "%userprofile%\Nox_share\Other\Telegram"
if exist "Telegram Audio" (move "Telegram Audio\*.*" "%cdCel%\Telegram\Telegram Audio")
if exist "Telegram Documents" (move "Telegram Documents\*.*" "%cdCel%\Telegram\Telegram Documents")
if exist "Telegram Images" (move "Telegram Images\*.*" "%cdCel%\Telegram\Telegram Images")
if exist "Telegram Video" (move "Telegram Video\*.*" "%cdCel%\Telegram\Telegram Video")
cd "%userprofile%\Nox_share\Other"
rmdir /s /q Telegram
)

title "Eliminando duplicados..."
cd C:\CloneSpy
if exist "%userprofile%\Organizer\Duplicates\download.cst" (start /min CloneSpy -a "%userprofile%\Organizer\Duplicates\download.cst" -e)
if exist "%userprofile%\Organizer\Duplicates\whatsapp.cst" (start /min CloneSpy -a "%userprofile%\Organizer\Duplicates\whatsapp.cst" -e)
if exist "%userprofile%\Organizer\Duplicates\telegram.cst" (start /min CloneSpy -a "%userprofile%\Organizer\Duplicates\telegram.cst" -e)

cd "%userprofile%\Desktop\Celu"
if exist "WhatsApp\Media\WhatsApp Documents\*.mp4" (echo n | move /-y "WhatsApp\Media\WhatsApp Documents\*.mp4" "WhatsApp\Media\WhatsApp Video")
if exist "Telegram\Telegram Documents\*.mp4" (echo n | move /-y "Telegram\Telegram Documents\*.mp4" "Telegram\Telegram Video")
if exist "WhatsApp\Media\WhatsApp Documents\*.jpg" (echo n | move /-y "WhatsApp\Media\WhatsApp Documents\*.jpg" "WhatsApp\Media\WhatsApp Images")
if exist "Telegram\Telegram Documents\*.jpg" (echo n | move /-y "Telegram\Telegram Documents\*.jpg" "Telegram\Telegram Images")
if exist "WhatsApp\Media\WhatsApp Documents\*.png" (echo n | move /-y "WhatsApp\Media\WhatsApp Documents\*.png" "WhatsApp\Media\WhatsApp Images")
if exist "Telegram\Telegram Documents\*.png" (echo n | move /-y "Telegram\Telegram Documents\*.png" "Telegram\Telegram Images")
if exist "WhatsApp\Media\WhatsApp Documents\*.gif" (echo n | move /-y "WhatsApp\Media\WhatsApp Documents\*.gig" "WhatsApp\Media\WhatsApp Animated Gifs")

set carpetas=10
:loop
title "Ordenando por fecha..."
set /a cont=%cont%+1
if %cont%==1 (set "targetRoot=%cdCel%\WhatsApp\Media\.Statuses")
if %cont%==2 (set "targetRoot=%cdCel%\WhatsApp\Media\WhatsApp Animated Gifs")
if %cont%==3 (set "targetRoot=%cdCel%\WhatsApp\Media\WhatsApp Video")
if %cont%==4 (set "targetRoot=%cdCel%\WhatsApp\Media\WhatsApp Images")
if %cont%==5 (set "targetRoot=%cdCel%\WhatsApp\Media\WhatsApp Audio")
if %cont%==6 (set "targetRoot=%cdCel%\WhatsApp\Media\WhatsApp Documents")
if %cont%==7 (set "targetRoot=%cdCel%\Telegram\Telegram Documents")
if %cont%==8 (set "targetRoot=%cdCel%\Telegram\Telegram Audio")
if %cont%==9 (set "targetRoot=%cdCel%\Telegram\Telegram Images")
if %cont%==10 (set "targetRoot=%cdCel%\Telegram\Telegram Video")
for %%F in ("%targetRoot%\*.*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C" mkdir "%targetRoot%\%%C"
    if not exist "%targetRoot%\%%C\%%C-%%B" mkdir "%targetRoot%\%%C\%%C-%%B"
    move "%%~fF" "%targetRoot%\%%C\%%C-%%B">NUL
  )
)
if %cont%==%carpetas% (goto :end)
goto :loop
:end