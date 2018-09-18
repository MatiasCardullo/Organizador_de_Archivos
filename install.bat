echo off
color 0a
set carpetaTemp=%cd%

echo Cargando Directorios...
cd "%userprofile%\Desktop"
if not exist "Celu\Telegram" (md "Celu\Telegram")
if not exist "Celu\WhatsApp\Media" (md "Celu\WhatsApp\Media")
if not exist "Celu\WhatsApp\Media\WhatsApp Animated Gifs" (md "Celu\WhatsApp\Media\WhatsApp Animated Gifs")
if not exist "Celu\WhatsApp\Media\WhatsApp Audio" (md "Celu\WhatsApp\Media\WhatsApp Audio")
if not exist "Celu\WhatsApp\Media\WhatsApp Documents" (md "Celu\WhatsApp\Media\WhatsApp Documents")
if not exist "Celu\WhatsApp\Media\WhatsApp Images" (md "Celu\WhatsApp\Media\WhatsApp Images")
if not exist "Celu\WhatsApp\Media\WhatsApp Video" (md "Celu\WhatsApp\Media\WhatsApp Video")
if not exist "Archivos\zips" (md "Archivos\zips")
if not exist "Archivos\apk" (md "Archivos\apk")
if not exist "Archivos\exe" (md "Archivos\exe")
if not exist "Archivos\iso" (md "Archivos\iso")
if not exist "Archivos\pdf" (md "Archivos\pdf")
if not exist "Archivos\txt" (md "Archivos\txt")
if not exist "Archivos\Office" (md "Archivos\Office")
::if not exist "Archivos\html" (md "Archivos\html")
if not exist "Archivos\imagenes" (md "Archivos\imagenes")
if not exist "Archivos\videos" (md "Archivos\videos")
if not exist "Archivos\musica" (md "Archivos\musica")

echo Cargando ejecutables...
cd "%carpetaTemp%"
xcopy /y organizer.bat "%userprofile%"
xcopy /y celu.bat "%userprofile%\Desktop\Celu"
choice /m "Desea que el programa se inicie con la PC"
if %ERRORLEVEL%==1 (xcopy /y start.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
if %ERRORLEVEL%==2 (goto :end)

:end
echo Programa Instalado
pause