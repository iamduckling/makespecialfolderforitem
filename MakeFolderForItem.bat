@echo off
setlocal

set "basename=."
for /F "tokens=1* delims=." %%a in ('dir /B /A-D ^| sort /R') do (
   set "filename=%%a"
   setlocal EnableDelayedExpansion

   for /F "delims=" %%c in ("!basename!") do if "!filename:%%c=!" equ "!filename!" (
      set "basename=!filename!"
      md "!basename!"
   )



copy "%%a.png" "f__holdr_weapon.png"
ren %%a.png b__holdr_weapon.png



move "f__holdr_weapon.png" "!basename!"
move "b__holdr_weapon.png" "!basename!"


   for /F "delims=" %%c in ("!basename!") do (
endlocal
      set "basename=%%c
   )

)