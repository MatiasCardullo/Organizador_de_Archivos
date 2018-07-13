echo off
color 0a
set elementos=12
cd "%userprofile%\Desktop\Celu"
if exist "WhatsApp\Media\GBWhatsApp Documents\*.mp4" (echo n | move /-y "WhatsApp\Media\GBWhatsApp Documents\*.mp4" "WhatsApp\Media\GBWhatsApp Video")
if exist "WhatsApp\Media\WhatsApp Documents\*.mp4" (echo n | move /-y "WhatsApp\Media\WhatsApp Documents\*.mp4" "WhatsApp\Media\WhatsApp Video")
if exist "Telegram\Telegram Documents\*.mp4" (echo n | move /-y "Telegram\Telegram Documents\*.mp4" "Telegram\Telegram Video")
:loop
set /a resultado=%resultado% + 1
if %resultado%==1 (cd "%userprofile%\Desktop")
if %resultado%==2 (cd "%userprofile%\Desktop\Archivos")
if %resultado%==3 (cd "%userprofile%\Desktop\Carpeta sin titulo")
if %resultado%==4 (cd "%userprofile%\Desktop\Nueva carpeta")
if %resultado%==5 (cd "%userprofile%\Desktop\Celu")
if %resultado%==6 (cd "%userprofile%\Desktop\Celu\Download")
if %resultado%==7 (cd "%userprofile%\Desktop\Celu\WhatsApp\Media\GBWhatsApp Documents")
if %resultado%==8 (cd "%userprofile%\Desktop\Celu\WhatsApp\Media\WhatsApp Documents")
if %resultado%==9 (cd "%userprofile%\Desktop\Celu\Telegram\Telegram Documents")
if %resultado%==10 (cd "%userprofile%\Documents\MEGA")
if %resultado%==11 (cd "%userprofile%\Documents\MEGAsync Downloads")
if %resultado%==12 (cd "%userprofile%\Downloads")
if exist "WhatsApp Image*.*" (echo n | move /-y "WhatsApp Image*.*" "%userprofile%\Desktop\Celu\WhatsApp")
if exist "WhatsApp Video*.*" (echo n | move /-y "WhatsApp Video*.*" "%userprofile%\Desktop\Celu\WhatsApp")
if exist "*.zip" (echo n | move /-y "*.zip" "%userprofile%\Desktop\Archivos\zips")
if exist "*.rar" (echo n | move /-y "*.rar" "%userprofile%\Desktop\Archivos\zips")
if exist "*.7z" (echo n | move /-y "*.7z" "%userprofile%\Desktop\Archivos\zips")
if exist "*.zip.*" (echo n | move /-y "*.zip.*" "%userprofile%\Desktop\Archivos\zips")
if exist "*.rar.*" (echo n | move /-y "*.rar.*" "%userprofile%\Desktop\Archivos\zips")
if exist "*.7z.*" (echo n | move /-y "*.7z.*" "%userprofile%\Desktop\Archivos\zips")
if exist "*.apk.*" (echo n | move /-y "*.apk.*" "%userprofile%\Desktop\Archivos\apk")
if exist "*.apk" (echo n | move /-y "*.apk" "%userprofile%\Desktop\Archivos\apk")
if exist "*.exe" (echo n | move /-y "*.exe" "%userprofile%\Desktop\Archivos\exe")
if exist "*.exe.*" (echo n | move /-y "*.exe.*" "%userprofile%\Desktop\Archivos\exe")
if exist "*.iso" (echo n | move /-y "*.iso" "%userprofile%\Desktop\Archivos\iso")
if exist "*.img" (echo n | move /-y "*.img" "%userprofile%\Desktop\Archivos\iso")
if exist "*.iso.*" (echo n | move /-y "*.iso.*" "%userprofile%\Desktop\Archivos\iso")
if exist "*.img.*" (echo n | move /-y "*.img.*" "%userprofile%\Desktop\Archivos\iso")
if exist "*.pdf" (echo n | move /-y "*.pdf" "%userprofile%\Desktop\Archivos\pdf")
if exist "*.txt" (echo n | move /-y "*.txt" "%userprofile%\Desktop\Archivos\txt")
if exist "*.doc" (echo n | move /-y "*.doc" "%userprofile%\Desktop\Archivos\Office")
if exist "*.docx" (echo n | move /-y "*.docx" "%userprofile%\Desktop\Archivos\Office")
if exist "*.xls" (echo n | move /-y "*.xls" "%userprofile%\Desktop\Archivos\Office")
if exist "*.xlsx" (echo n | move /-y "*.xlsx" "%userprofile%\Desktop\Archivos\Office")
if exist "*.ppt" (echo n | move /-y "*.ppt" "%userprofile%\Desktop\Archivos\Office")
if exist "*.pptx" (echo n | move /-y "*.pptx" "%userprofile%\Desktop\Archivos\Office")
if exist "*.pps" (echo n | move /-y "*.pps" "%userprofile%\Desktop\Archivos\Office")
if exist "*.ppsx" (echo n | move /-y "*.ppsx" "%userprofile%\Desktop\Archivos\Office")
if exist "*.jpg" (echo n | move /-y "*.jpg" "%userprofile%\Desktop\Archivos\imagenes")
if exist "*.jpeg" (echo n | move /-y "*.jpeg" "%userprofile%\Desktop\Archivos\imagenes")
if exist "*.png" (echo n | move /-y "*.png" "%userprofile%\Desktop\Archivos\imagenes")
if exist "*.mp4" (echo n | move /-y "*.mp4" "%userprofile%\Desktop\Archivos\videos")
if exist  "*.htm" (echo n | move /-y "*.htm" "%userprofile%\Desktop\Archivos\html")
if exist  "*.html" (echo n | move /-y "*.html" "%userprofile%\Desktop\Archivos\html")

::Falla al intentar mover carpetas de los html, debo solucionarlo
::FOR /D "%%x" in (*_archivos) DO move "%%x" "%userprofile%\Desktop\Archivos\html"
::FOR /D "%%x" in (*_files) DO move "%%x" "%userprofile%\Desktop\Archivos\html"
if %resultado%==%elementos% (goto :exit)
goto :loop
:exit
cd "%userprofile%\Desktop"
if exist "*.*" (echo n | move /-y "*.*" "%userprofile%\Desktop\Archivos")