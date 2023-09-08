@echo off
setlocal enabledelayedexpansion
mkdir inf
set devversion=dev$
set ip=ipconfig
set version=0.000.320
title $%version%
title LOADING LOG
echo _,IMPORTANT,-FILE,-DO,-NOT,-DELETE,_>> inf/_log.y0
echo _,%USERNAME%,_ >> inf/_log.y0
echo _,IMPORTANT QUESTION: WHY DO WE NOTE IP?,_ >> inf/_log.y0
echo _,FOR SECURITY REASON THAT CAN'T BE TELL,_ >> inf/_log.y0
ipconfig >> inf/_log.y0
echo. >> inf/_log.y0
title LOADING CACHE
echo _,IMPORTANT,-FILE,-DO,-NOT,-DELETE,_ >> inf/_cache.y0
ipconfig >> inf/_cache.y0
echo %USERNAME% >> inf/_cache.y0
echo %VERSION% >> inf/_cache.y0
title LOADING VERSION
echo _,IMPORTANT,-FILE,-DO,-NOT,-DELETE,_ >> inf/_version.y0
echo $%devversion%%VERSION% >> inf/_version.y0
echo %devversion%%VERSION%$ >> inf/_version.y0
echo $%devversion%%VERSION%$ >> inf/_version.y0
echo $%VERSION% >> inf/_version.y0
echo %VERSION%$ >> inf/_version.y0
echo $%VERSION%$ >> inf/_version.y0
start y0-main.bat
endlocal
pause