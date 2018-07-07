echo off
color 0a
set carpetaTemp=%cd%
cd "%userprofile%\Desktop"
cls
echo Cargando Directorios
if not exist "Celu\Telegram" (md "Celu\Telegram")
if not exist "Celu\WhatsApp\Media" (md "Celu\WhatsApp\Media")
if not exist "Archivos\zips" (md "Archivos\zips")
if not exist "Archivos\apk" (md "Archivos\apk")
if not exist "Archivos\exe" (md "Archivos\exe")
if not exist "Archivos\iso" (md "Archivos\iso")
if not exist "Archivos\pdf" (md "Archivos\pdf")
if not exist "Archivos\txt" (md "Archivos\txt")
if not exist "Archivos\Office" (md "Archivos\Office")
if not exist "Archivos\html" (md "Archivos\html")
echo Cargando ejecutables
cd %carpetaTemp%
xcopy /y start.bat "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
xcopy /y organizer.bat "%userprofile%"
xcopy /y deleteSent.bat "%userprofile%\Desktop\Celu\Whatsapp\Media"
echo Programa Instalado
pause