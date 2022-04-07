if %rand9% == 0 set CardColor=R
if %rand9% == 1 set CardColor=Y
if %rand9% == 2 set CardColor=G
if %rand9% == 3 set CardColor=B
if %rand9% == 4 set CardColor=R
if %rand9% == 5 set CardColor=Y
if %rand9% == 6 set CardColor=G
if %rand9% == 7 set CardColor=B
if %rand9% LEQ 7 (
   set /a CardNumber=%rand12%+1
) else (
   if %rand12% == 0 set CardColor=R& set CardNumber=0
   if %rand12% == 1 set CardColor=Y& set CardNumber=0
   if %rand12% == 2 set CardColor=G& set CardNumber=0
   if %rand12% == 3 set CardColor=B& set CardNumber=0
   if %rand12% == 4 set CardColor=N& set CardNumber=C
   if %rand12% == 5 set CardColor=N& set CardNumber=C
   if %rand12% == 6 set CardColor=N& set CardNumber=C
   if %rand12% == 7 set CardColor=N& set CardNumber=C
   if %rand12% == 8 set CardColor=N& set CardNumber=M
   if %rand12% == 9 set CardColor=N& set CardNumber=M
   if %rand12% == 10 set CardColor=N& set CardNumber=M
   if %rand12% == 11 set CardColor=N& set CardNumber=M
)
set CardName=%CardColor%_%CardNumber%
if %CardNumber% == 10 set CardNumber=?

goto :EOF