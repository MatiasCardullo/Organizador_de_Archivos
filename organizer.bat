echo off
title "Organizando archivos de la pc..."
color 0a
set /a directorios=8
set /a numFile=0
set /a cdmoves=0
set "cdFiles=%userprofile%\Desktop\Archivos"
set "cdCel=%userprofile%\Desktop\Celu"

if not exist "%userprofile%\Organizer\History" (md "%userprofile%\Organizer\History")
:loopHistory
set /a numFile=%numFile%+1
if exist "%userprofile%\Organizer\History\moves-%numFile%.txt" (goto :loopHistory)
set "history=%userprofile%\Organizer\History\moves-%numFile%.txt"
echo (%date%-%time%)>"%history%"

if exist "%userprofile%\Organizer\Duplicates\Archivos1.cst" (
	cd "C:\CloneSpy"
	start /min /wait CloneSpy -a "%userprofile%\Organizer\Duplicates\Archivos1.cst" -e
)
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
if exist "*.zip" (
	if not exist "%cdFiles%\zips" (md "%cdFiles%\zips")
	echo n | move /-y "*.zip" "%cdFiles%\zips"
) >>"%history%"
if exist "*.rar" (
	if not exist "%cdFiles%\zips" (md "%cdFiles%\zips")
	echo n | move /-y "*.rar" "%cdFiles%\zips"
) >>"%history%"
if exist "*.7z" (
	if not exist "%cdFiles%\zips" (md "%cdFiles%\zips")
	echo n | move /-y "*.7z" "%cdFiles%\zips"
) >>"%history%"
if exist "*.zip.*" (
	if not exist "%cdFiles%\zips" (md "%cdFiles%\zips")
	echo n | move /-y "*.zip.*" "%cdFiles%\zips"
) >>"%history%"
if exist "*.rar.*" (
	if not exist "%cdFiles%\zips" (md "%cdFiles%\zips")
	echo n | move /-y "*.rar.*" "%cdFiles%\zips"
) >>"%history%"
if exist "*.7z.*" (
	if not exist "%cdFiles%\zips" (md "%cdFiles%\zips")
	echo n | move /-y "*.7z.*" "%cdFiles%\zips"
) >>"%history%"
if exist "*.apk.*" (
	if not exist "%cdFiles%\apk" (md "%cdFiles%\apk")
	echo n | move /-y "*.apk.*" "%cdFiles%\apk"
) >>"%history%"
if exist "*.apk" (
	if not exist "%cdFiles%\apk" (md "%cdFiles%\apk")
	echo n | move /-y "*.apk" "%cdFiles%\apk"
) >>"%history%"
if exist "*.exe" (
	if not exist "%cdFiles%\exe" (md "%cdFiles%\exe")
	echo n | move /-y "*.exe" "%cdFiles%\exe"
) >>"%history%"
if exist "*.exe.*" (
	if not exist "%cdFiles%\exe" (md "%cdFiles%\exe")
	echo n | move /-y "*.exe.*" "%cdFiles%\exe"
) >>"%history%"
if exist "*.iso" (
	if not exist "%cdFiles%\iso" (md "%cdFiles%\iso")
	echo n | move /-y "*.iso" "%cdFiles%\iso"
) >>"%history%"
if exist "*.img" (
	if not exist "%cdFiles%\iso" (md "%cdFiles%\iso")
	echo n | move /-y "*.img" "%cdFiles%\iso"
) >>"%history%"
if exist "*.iso.*" (
	if not exist "%cdFiles%\iso" (md "%cdFiles%\iso")
	echo n | move /-y "*.iso.*" "%cdFiles%\iso"
) >>"%history%"
if exist "*.img.*" (
	if not exist "%cdFiles%\iso" (md "%cdFiles%\iso")
	echo n | move /-y "*.img.*" "%cdFiles%\iso"
) >>"%history%"
if exist "*.pdf" (
	if not exist "%cdFiles%\pdf" (md "%cdFiles%\pdf")
	echo n | move /-y "*.pdf" "%cdFiles%\pdf"
) >>"%history%"
if exist "*.txt" (
	if not exist "%cdFiles%\txt" (md "%cdFiles%\txt")
	echo n | move /-y "*.txt" "%cdFiles%\txt"
) >>"%history%"
if exist "*.doc" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.doc" "%cdFiles%\Office"
) >>"%history%"
if exist "*.docx" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.docx" "%cdFiles%\Office"
) >>"%history%"
if exist "*.xls" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.xls" "%cdFiles%\Office"
) >>"%history%"
if exist "*.xlsx" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.xlsx" "%cdFiles%\Office"
) >>"%history%"
if exist "*.ppt" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.ppt" "%cdFiles%\Office"
) >>"%history%"
if exist "*.pptx" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.pptx" "%cdFiles%\Office"
) >>"%history%"
if exist "*.pps" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.pps" "%cdFiles%\Office"
) >>"%history%"
if exist "*.ppsx" (
	if not exist "%cdFiles%\Office" (md "%cdFiles%\Office")
	echo n | move /-y "*.ppsx" "%cdFiles%\Office"
) >>"%history%"
if exist "*.jpg" (
	if not exist "%cdFiles%\imagenes" (md "%cdFiles%\imagenes")
	echo n | move /-y "*.jpg" "%cdFiles%\imagenes"
) >>"%history%"
if exist "*.jpeg" (
	if not exist "%cdFiles%\imagenes" (md "%cdFiles%\imagenes")
	echo n | move /-y "*.jpeg" "%cdFiles%\imagenes"
) >>"%history%"
if exist "*.png" (
	if not exist "%cdFiles%\imagenes" (md "%cdFiles%\imagenes")
	echo n | move /-y "*.png" "%cdFiles%\imagenes"
) >>"%history%"
if exist "*.mkv" (
	if not exist "%cdFiles%\videos" (md "%cdFiles%\videos")
	echo n | move /-y "*.mkv" "%cdFiles%\videos"
) >>"%history%"
if exist "*.mp4" (
	if not exist "%cdFiles%\videos" (md "%cdFiles%\videos")
	echo n | move /-y "*.mp4" "%cdFiles%\videos"
) >>"%history%"
if exist "*.avi" (
	if not exist "%cdFiles%\videos" (md "%cdFiles%\videos")
	echo n | move /-y "*.avi" "%cdFiles%\videos"
) >>"%history%"
if exist "*.webm" (
	if not exist "%cdFiles%\videos" (md "%cdFiles%\videos")
	echo n | move /-y "*.webm" "%cdFiles%\videos"
) >>"%history%"
if exist "*.mp3" (
	if not exist "%cdFiles%\musica" (md "%cdFiles%\musica")
	echo n | move /-y "*.mp3" "%cdFiles%\musica"
) >>"%history%"
if exist "*.jar" (
	if not exist "%cdFiles%\jar" (md "%cdFiles%\jar")
	echo n | move /-y "*.jar" "%cdFiles%\jar"
) >>"%history%"
if exist "*.veg" (
	if not exist "%cdFiles%\Vegas" (md "%cdFiles%\Vegas")
	echo n | move /-y "*.veg" "%cdFiles%\Vegas"
) >>"%history%"
if exist "*.veg.*" (
	if not exist "%cdFiles%\Vegas" (md "%cdFiles%\Vegas")
	echo n | move /-y "*.veg.*" "%cdFiles%\Vegas"
) >>"%history%"
if exist  "*.htm" (
	if not exist "%cdFiles%\html" (md "%cdFiles%\html")
	for %%F in ("*.htm") Do move /y "%%~dpnF_files" "%cdFiles%\html"
	for %%F in ("*.htm") Do move /y "%%~dpnF_archivos" "%cdFiles%\html"
echo n | move /-y "*.htm" "%cdFiles%\html"
) >>"%history%"
if exist  "*.html" (
	if not exist "%cdFiles%\html" (md "%cdFiles%\html")
	for %%F in ("*.html") Do move /y "%%~dpnF_files" "%cdFiles%\html"
	for %%F in ("*.html") Do move /y "%%~dpnF_archivos" "%cdFiles%\html"
echo n | move /-y "*.html" "%cdFiles%\html"
) >>"%history%"
if %cdmoves%==%directorios% (goto :exit)
goto :loopMove

:exit
if exist "%userprofile%\Organizer\Duplicates\Archivos2.cst" (
	cd "C:\CloneSpy"
	start /min /wait CloneSpy -a "%userprofile%\Organizer\Duplicates\Archivos2.cst" -e
)
cd "%userprofile%\Downloads"
if exist "*.*" (echo n | move /-y "*.*" "%cdFiles%") >>"%history%"
cd "%userprofile%\Desktop"
if exist "*.*" (echo n | move /-y "*.*" "%cdFiles%") >>"%history%"
echo finalizado exitosamente >>"%history%"
attrib +r "%history%"
