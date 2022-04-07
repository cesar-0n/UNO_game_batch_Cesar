cls
:pri
cls
set /a rand9=%random%/3700
set /a rand12=%random%/2750
echo number9=%rand9%
echo number12=%rand12%
if %rand9% LSS 9 if %rand12% LSS 12 (
   call Data/RandomToCard.bat
) else (
   goto pri
)
echo CardColor=%CardColor%
echo CardNumber=%CardNumber%
echo CardName=%CardName%
call Data/DrawCard_%CardColor%.bat
goto pri