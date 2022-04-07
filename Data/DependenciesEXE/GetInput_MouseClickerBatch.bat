cls
if %errorlevel% gtr 0 (
   echo Key pressed: %errorlevel%
) else (
   rem Mouse button clicked
   set /A "input=-%errorlevel%, row=input >> 16, col=input & 0xFFFF"
   if !col! lss 32768 (
      set button=LEFT
      echo LEFT button clicked at {Row [Fila]}=!row!,{Col [Columna]}=!col!
   ) else (
      set /A col-=32768
      set button=RIGHT
      echo RIGHT button clicked at Fila=!row!,Columna=!col!
   )
)
goto :EOF