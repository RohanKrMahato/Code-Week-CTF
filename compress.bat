@echo off
setlocal enabledelayedexpansion

set "counter=0"




:loop
if !counter! equ 2000 (
    goto :final
)

"C:\Program Files\7-Zip\7z.exe" a -ttar "HI.tar" "ITS_ME.zip"
del "ITS_ME.zip"

"C:\Program Files\7-Zip\7z.exe" a -tgzip "HEHE.tar.gz" "HI.tar"
del "HI.tar"

"C:\Program Files\7-Zip\7z.exe" a -tzip "ITSINFOSECiiTG.zip" "HEHE.tar.gz"
del "HEHE.tar.gz"

"C:\Program Files\7-Zip\7z.exe" a -ttar "isITme.tar" "ITSINFOSECiiTG.zip"
del "ITSINFOSECiiTG.zip"

"C:\Program Files\7-Zip\7z.exe" a -tgzip "mango.tar.gz" "isITme.tar"
del "isITme.tar"

"C:\Program Files\7-Zip\7z.exe" a -tzip "ITS_ME.zip" "mango.tar.gz"
del "mango.tar.gz"

set /a "counter+=1"
goto :loop

:final
pause