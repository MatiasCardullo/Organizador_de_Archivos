echo off
title "Organizando archivos del celular..."
color 0a

cd "%userprofile%\Desktop\Celu\WhatsApp\Media"
if exist "GBWhatsApp Animated Gifs" (
  move "GBWhatsApp Animated Gifs\*.*" "WhatsApp Animated Gifs"
  rmdir /s /q "GBWhatsApp Animated Gifs"
)
if exist "GBWhatsApp Audio" (
  move "GBWhatsApp Audio\*.*" "WhatsApp Audio"
  rmdir /s /q "GBWhatsApp Audio"
)
if exist "GBWhatsApp Documents" (
  move "GBWhatsApp Documents\*.*" "WhatsApp Documents"
  rmdir /s /q "GBWhatsApp Documents"
)
if exist "GBWhatsApp Images" (
  move "GBWhatsApp Images\*.*" "WhatsApp Images"
  rmdir /s /q "GBWhatsApp Images"
)
if exist "GBWhatsApp Video" (
  move "GBWhatsApp Video\*.*" "WhatsApp Video"
  rmdir /s /q "GBWhatsApp Video"
)

if exist "WhatsApp Animated Gifs\Sent" (rmdir /s /q "WhatsApp Animated Gifs\Sent")
if exist "WhatsApp Audio\Sent" (rmdir /s /q "WhatsApp Audio\Sent")
if exist "WhatsApp Documents\Sent" (rmdir /s /q "WhatsApp Documents\Sent")
if exist "WhatsApp Images\Sent" (rmdir /s /q "WhatsApp Images\Sent")
if exist "WhatsApp Video\Sent"(rmdir /s /q "WhatsApp Video\Sent")

cd "%userprofile%\Desktop\Celu"
if exist "WhatsApp\Media\GBWhatsApp Documents\*.mp4" (echo n | move /-y "WhatsApp\Media\GBWhatsApp Documents\*.mp4" "WhatsApp\Media\GBWhatsApp Video")
if exist "WhatsApp\Media\WhatsApp Documents\*.mp4" (echo n | move /-y "WhatsApp\Media\WhatsApp Documents\*.mp4" "WhatsApp\Media\WhatsApp Video")
if exist "Telegram\Telegram Documents\*.mp4" (echo n | move /-y "Telegram\Telegram Documents\*.mp4" "Telegram\Telegram Video")

set carpetas=9
:loop
title "Ordenando por fecha archivos del celular......"
set /a cont=%cont%+1
if %cont%==1 (set "targetRoot=%userprofile%\Desktop\Celu\WhatsApp\Media\WhatsApp Animated Gifs")
if %cont%==2 (set "targetRoot=%userprofile%\Desktop\Celu\WhatsApp\Media\WhatsApp Video")
if %cont%==3 (set "targetRoot=%userprofile%\Desktop\Celu\WhatsApp\Media\WhatsApp Images")
if %cont%==4 (set "targetRoot=%userprofile%\Desktop\Celu\WhatsApp\Media\WhatsApp Audio")
if %cont%==5 (set "targetRoot=%userprofile%\Desktop\Celu\WhatsApp\Media\WhatsApp Documents")
if %cont%==6 (set "targetRoot=%userprofile%\Desktop\Celu\Telegram\Telegram Documents")
if %cont%==7 (set "targetRoot=%userprofile%\Desktop\Celu\Telegram\Telegram Audio")
if %cont%==8 (set "targetRoot=%userprofile%\Desktop\Celu\Telegram\Telegram Images")
if %cont%==9 (set "targetRoot=%userprofile%\Desktop\Celu\Telegram\Telegram Video")
for %%F in ("%targetRoot%\*.*") do (
  for /f "tokens=1,2,3 delims=/ " %%A in ("%%~tF") do (
    if not exist "%targetRoot%\%%C" mkdir "%targetRoot%\%%C"
    if not exist "%targetRoot%\%%C\%%C-%%B" mkdir "%targetRoot%\%%C\%%C-%%B"
    move "%%~fF" "%targetRoot%\%%C\%%C-%%B"
  )
)

if %cont%==%carpetas% (goto :end)
goto :loop
:end