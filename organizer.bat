echo off
title "Organizando archivos de la pc..."
color 0a
set /a directorios=11
set /a numFile=0
set /a cdmoves=0
set "cdFiles=%userprofile%\Desktop\Archivos"
set "cdCel=%userprofile%\Desktop\Celu"

if not exist "%userprofile%\organizer history" (md "%userprofile%\organizer history")
:loopHistory
set /a numFile=%numFile%+1
if exist "%userprofile%\organizer history\moves-%numFile%.txt" (goto :loopHistory)
set "history=%userprofile%\organizer history\moves-%numFile%.txt"
echo (%date%-%time%)>"%history%"

:loopMove
set /a cdmoves=%cdmoves%+1
if %cdmoves%==1 (cd "%userprofile%\Desktop")
if %cdmoves%==2 (cd "%cdFiles%")
if %cdmoves%==3 (cd "%userprofile%\Desktop\Nueva carpeta")
if %cdmoves%==4 (cd "%cdCel%")
if %cdmoves%==5 (cd "%cdCel%\Download")
if %cdmoves%==6 (cd "%userprofile%\Documents\MEGA")
if %cdmoves%==7 (cd "%userprofile%\Documents\MEGAsync Downloads")
if %cdmoves%==8 (cd "%userprofile%\Downloads")

if exist "WhatsApp Image*.*" (echo n | move /-y "WhatsApp Image*.*" "%cdCel%\WhatsApp") >>"%history%"
if exist "WhatsApp Video*.*" (echo n | move /-y "WhatsApp Video*.*" "%cdCel%\WhatsApp") >>"%history%"
if exist "*.zip" (echo n | move /-y "*.zip" "%cdFiles%\zips") >>"%history%"
if exist "*.rar" (echo n | move /-y "*.rar" "%cdFiles%\zips") >>"%history%"
if exist "*.7z" (echo n | move /-y "*.7z" "%cdFiles%\zips") >>"%history%"
if exist "*.zip.*" (echo n | move /-y "*.zip.*" "%cdFiles%\zips") >>"%history%"
if exist "*.rar.*" (echo n | move /-y "*.rar.*" "%cdFiles%\zips") >>"%history%"
if exist "*.7z.*" (echo n | move /-y "*.7z.*" "%cdFiles%\zips") >>"%history%"
if exist "*.apk.*" (echo n | move /-y "*.apk.*" "%cdFiles%\apk") >>"%history%"
if exist "*.apk" (echo n | move /-y "*.apk" "%cdFiles%\apk") >>"%history%"
if exist "*.exe" (echo n | move /-y "*.exe" "%cdFiles%\exe") >>"%history%"
if exist "*.exe.*" (echo n | move /-y "*.exe.*" "%cdFiles%\exe") >>"%history%"
if exist "*.iso" (echo n | move /-y "*.iso" "%cdFiles%\iso") >>"%history%"
if exist "*.img" (echo n | move /-y "*.img" "%cdFiles%\iso") >>"%history%"
if exist "*.iso.*" (echo n | move /-y "*.iso.*" "%cdFiles%\iso") >>"%history%"
if exist "*.img.*" (echo n | move /-y "*.img.*" "%cdFiles%\iso") >>"%history%"
if exist "*.pdf" (echo n | move /-y "*.pdf" "%cdFiles%\pdf") >>"%history%"
if exist "*.txt" (echo n | move /-y "*.txt" "%cdFiles%\txt") >>"%history%"
if exist "*.doc" (echo n | move /-y "*.doc" "%cdFiles%\Office") >>"%history%"
if exist "*.docx" (echo n | move /-y "*.docx" "%cdFiles%\Office") >>"%history%"
if exist "*.xls" (echo n | move /-y "*.xls" "%cdFiles%\Office") >>"%history%"
if exist "*.xlsx" (echo n | move /-y "*.xlsx" "%cdFiles%\Office") >>"%history%"
if exist "*.ppt" (echo n | move /-y "*.ppt" "%cdFiles%\Office") >>"%history%"
if exist "*.pptx" (echo n | move /-y "*.pptx" "%cdFiles%\Office") >>"%history%"
if exist "*.pps" (echo n | move /-y "*.pps" "%cdFiles%\Office") >>"%history%"
if exist "*.ppsx" (echo n | move /-y "*.ppsx" "%cdFiles%\Office") >>"%history%"
if exist "*.jpg" (echo n | move /-y "*.jpg" "%cdFiles%\imagenes") >>"%history%"
if exist "*.jpeg" (echo n | move /-y "*.jpeg" "%cdFiles%\imagenes") >>"%history%"
if exist "*.png" (echo n | move /-y "*.png" "%cdFiles%\imagenes") >>"%history%"
if exist "*.mp4" (echo n | move /-y "*.mp4" "%cdFiles%\videos") >>"%history%"
if exist "*.avi" (echo n | move /-y "*.avi" "%cdFiles%\videos") >>"%history%"
if exist "*.mp3" (echo n | move /-y "*.mp3" "%cdFiles%\musica") >>"%history%"
if exist  "*.htm" (
for %%F in ("*.htm") Do move /y "%%~dpnF_files" "%cdFiles%\html"
for %%F in ("*.htm") Do move /y "%%~dpnF_archivos" "%cdFiles%\html"
echo n | move /-y "*.htm" "%cdFiles%\html"
) >>"%history%"
if exist  "*.html" (
for %%F in ("*.html") Do move /y "%%~dpnF_files" "%cdFiles%\html"
for %%F in ("*.html") Do move /y "%%~dpnF_archivos" "%cdFiles%\html"
echo n | move /-y "*.html" "%cdFiles%\html"
) >>"%history%"
if %cdmoves%==%directorios% (goto :exit)
goto :loopMove

:exit
cd "%userprofile%\Desktop"
if exist "*.*" (echo n | move /-y "*.*" "%cdFiles%") >>"%history%"
echo finalizado exitosamente >>"%history%"