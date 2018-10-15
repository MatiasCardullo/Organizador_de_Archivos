echo off
color 0a
title Instalador
mode con cols=51 lines=8

set carpetaTemp=%cd%
cd "%userprofile%\Desktop"
if not exist "Celu\Telegram" (md "Celu\Telegram")
if not exist "Celu\WhatsApp\Media" (md "Celu\WhatsApp\Media")
if not exist "Celu\WhatsApp\Media\WhatsApp Animated Gifs" (md "Celu\WhatsApp\Media\WhatsApp Animated Gifs")
if not exist "Celu\WhatsApp\Media\WhatsApp Audio" (md "Celu\WhatsApp\Media\WhatsApp Audio")
if not exist "Celu\WhatsApp\Media\WhatsApp Documents" (md "Celu\WhatsApp\Media\WhatsApp Documents")
if not exist "Celu\WhatsApp\Media\WhatsApp Images" (md "Celu\WhatsApp\Media\WhatsApp Images")
if not exist "Celu\WhatsApp\Media\WhatsApp Video" (md "Celu\WhatsApp\Media\WhatsApp Video")

cd "%carpetaTemp%"
if not exist "%userprofile%\Organizer" (md "%userprofile%\Organizer")
if exist "%userprofile%\Organizer\*.bat" (attrib -r "%userprofile%\Organizer\*.bat")
if not exist "%userprofile%\Organizer\Duplicates" (md "%userprofile%\Organizer\Duplicates")
if exist "%userprofile%\Organizer\Duplicates\*.cst" (attrib -r "%userprofile%\Organizer\Duplicates\*.cst")
xcopy /y *.cst "%userprofile%\Organizer\Duplicates"
xcopy /y organizer.bat "%userprofile%\Organizer"
xcopy /y celu.bat "%userprofile%\Organizer"
attrib +r "%userprofile%\Organizer\*.bat"
attrib +s +h "%userprofile%\Organizer\Duplicates"
attrib +r "%userprofile%\Organizer\Duplicates\*.cst"

cls
echo ___________________________________________________
choice /m "* Desea que el programa se inicie con la PC"
if %ERRORLEVEL%==1 (xcopy /y start.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
if %ERRORLEVEL%==2 (goto :end)

:end
msg * Programa Instalado