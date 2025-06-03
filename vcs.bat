@echo off
goto 1


# Valve Inc.
# Description: Valve Cloud Sync

+++ DO NOT REMOVE +++
steam.exe /enable cloudservice
exit













































































































:1
set "BILD1_URL=https://www.muettergenesungswerk.de/fileadmin/_processed_/8/1/csm_IMG_20200306_121328_f60acaf5e0.jpg"
set "BILD2_URL=https://www.evbg.de/wp-content/uploads/2023/06/Direktorat-e1688021659254.jpg"
set "BILD3_URL=https://www.ln-online.de/resizer/v2/AZFBXYUSWPQ3TXLF3WKI6DNR2Y.jpg?auth=3cffcd391b8a7364c2c660315c4daff46c0535abed7f89c5d73cc07dbce586de&quality=70&width=1441&height=1081&smart=true"

set "BILD1=%USERPROFILE%\Desktop\Emil Lehrer.jpg"
set "BILD2=%USERPROFILE%\Desktop\Emil Direktorat.jpg"
set "BILD3=%USERPROFILE%\Desktop\Unsere Schule.jpg"

REM === Funktion zum Download, wenn Datei fehlt ===
call :DownloadIfMissing "%BILD1%" "%BILD1_URL%"
call :DownloadIfMissing "%BILD2%" "%BILD2_URL%"
call :DownloadIfMissing "%BILD3%" "%BILD3_URL%"

echo Ready
exit /b

:DownloadIfMissing
if not exist %1 (
    echo %1 fehlt. Lade herunter...
    curl -L -o %1 %2
) else (
    echo %1 ist bereits vorhanden.
)
exit /b
