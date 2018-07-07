echo off
color 0a
set elementos=11
:loop
set /a resultado=%resultado% + 1
if %resultado%==1 (cd "%userprofile%\Downloads")
if %resultado%==2 (cd "%userprofile%\Desktop\Carpeta sin título")
if %resultado%==3 (cd "%userprofile%\Desktop\Nueva carpeta")
if %resultado%==4 (cd "%userprofile%\Desktop\Celu")
if %resultado%==5 (cd "%userprofile%\Desktop\Celu\Download")
if %resultado%==6 (cd "%userprofile%\Desktop\Celu\WhatsApp\Media\GBWhatsApp Documents")
if %resultado%==7 (cd "%userprofile%\Desktop\Celu\WhatsApp\Media\WhatsApp Documents")
if %resultado%==8 (cd "%userprofile%\Desktop\Celu\Telegram\Telegram Documents")
if %resultado%==9 (cd "%userprofile%\Documents\MEGA")
if %resultado%==10 (cd "%userprofile%\Documents\MEGAsync Downloads")
if %resultado%==11 (cd "%userprofile%\Desktop")
move "WhatsApp Image*.*" "%userprofile%\Desktop\Celu\WhatsApp"
echo n | move /-y "*.zip" "%userprofile%\Desktop\Archivos\zips"
echo n | move /-y "*.rar" "%userprofile%\Desktop\Archivos\zips"
echo n | move /-y "*.7z" "%userprofile%\Desktop\Archivos\zips"
echo n | move /-y "*.zip.*" "%userprofile%\Desktop\Archivos\zips"
echo n | move /-y "*.rar.*" "%userprofile%\Desktop\Archivos\zips"
echo n | move /-y "*.7z.*" "%userprofile%\Desktop\Archivos\zips"
move "*.apk.*" "%userprofile%\Desktop\Archivos\apk"
move "*.apk" "%userprofile%\Desktop\Archivos\apk"
echo n | move /-y "*.exe" "%userprofile%\Desktop\Archivos\exe"
echo n | move /-y "*.exe.*" "%userprofile%\Desktop\Archivos\exe"
echo n | move /-y "*.iso" "%userprofile%\Desktop\Archivos\iso"
echo n | move /-y "*.img" "%userprofile%\Desktop\Archivos\iso"
echo n | move /-y "*.iso.*" "%userprofile%\Desktop\Archivos\iso"
echo n | move /-y "*.img.*" "%userprofile%\Desktop\Archivos\iso"
echo n | move /-y "*.pdf" "%userprofile%\Desktop\Archivos\pdf"
echo n | move /-y "*.txt" "%userprofile%\Desktop\Archivos\txt"
echo n | move /-y "*.doc" "%userprofile%\Desktop\Archivos\Office"
echo n | move /-y "*.docx" "%userprofile%\Desktop\Archivos\Office"
echo n | move /-y "*.xls" "%userprofile%\Desktop\Archivos\Office"
echo n | move /-y "*.xlsx" "%userprofile%\Desktop\Archivos\Office"
echo n | move /-y "*.ppt" "%userprofile%\Desktop\Archivos\Office"
echo n | move /-y "*.pptx" "%userprofile%\Desktop\Archivos\Office"
echo n | move /-y "*.pps" "%userprofile%\Desktop\Archivos\Office"
echo n | move /-y "*.ppsx" "%userprofile%\Desktop\Archivos\Office"
move "*.htm" "%userprofile%\Desktop\Archivos\html"
move "*.html" "%userprofile%\Desktop\Archivos\html"
::Falla al intentar mover carpetas de los html, debo solucionarlo
move "*_archivos" "%userprofile%\Desktop\Archivos\html"
move "*_files" "%userprofile%\Desktop\Archivos\html"
if %resultado%==%elementos% (goto :exit)
goto :loop
:exit
cd "%userprofile%\Desktop"
echo n | move /-y "*.*" "%userprofile%\Desktop\Archivos"