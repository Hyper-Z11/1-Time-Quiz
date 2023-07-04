@echo off
:Level_1
cls
title Level 1
echo What the first Youtube Video?
echo A.Me at the Zoo
echo.
echo B.Never gonna give you up 
echo.
echo C.Minecraft
echo.
echo D.GTA:SA
echo.

:Answer_1
set /p answer=Answer:
if /i %Answer%==A goto Correct_1
if /i %Answer%==B goto Incorrect
if /i %Answer%==C goto Incorrect
if /i %Answer%==D goto Incorrect
if /i not %Answer%==A.B.C.D goto Back_1

:Back_1
echo Invalid Letter
echo.
goto Answer_1

:Correct_1
cls
echo Correct Answer
echo.
pause
goto Level_2

:Level_2
cls
title Level 2
echo If yesterday friday,tommorow Sunday.Whay today?
echo A.Monday
echo.
echo B.Wednesday 
echo.
echo C.Saturday
echo.
echo D.Thursday
echo.

:Answer_2
set /p answer=Answer:
if /i %Answer%==A goto Incorrect
if /i %Answer%==B goto Incorrect
if /i %Answer%==C goto Correct_2
if /i %Answer%==D goto Incorrect
if /i not %Answer%==A.B.C.D goto Back_2

:Back_2
echo Invalid Letter
echo.
goto Answer_2

:Correct_2
cls
echo Correct Answer
echo.
pause
goto Level_3

:Level_3
cls
title Level 3
echo 1+1=?
echo A.1
echo.
echo B.3 
echo.
echo C.0
echo.
echo D.2
echo.

:Answer_3
set /p answer=Answer:
if /i %Answer%==A goto Incorrect
if /i %Answer%==B goto Incorrect
if /i %Answer%==C goto Incorrect
if /i %Answer%==D goto Correct_3
if /i not %Answer%==A.B.C.D goto Back_3

:Back_3
echo Invalid Letter
echo.
goto Answer_3

:Correct_3
cls
echo Correct Answer
echo.
pause
goto Level_4

:Level_4
cls
title Level 4
echo what the tallest mountain in the earth?
echo A.Fuji mountain
echo.
echo B.Everest mountain
echo.
echo C.K2 mountain
echo.
echo D.Mauna Kea mountain
echo.

:Answer_4
set /p answer=Answer:
if /i %Answer%==A goto Incorrect
if /i %Answer%==B goto Correct_4
if /i %Answer%==C goto Incorrect
if /i %Answer%==D goto Incorrect
if /i not %Answer%==A.B.C.D goto Back_4

:Back_4
echo Invalid Letter
echo.
goto Answer_4

:Correct_4
cls
echo Correct Answer
echo.
pause
goto Level_5

:Level_5
cls
title Level 5
echo What is always found in the dirt but never dirty?
echo.

:Answer_5
set /p answer=Answer:
if /i %Answer%==A_shadow goto Correct_5
if /i not %Answer%==A_shadow goto Incorrect

:Correct_5
cls
echo Correct Answer
echo.
pause
goto Victory

:Victory
cls
Title Victory
echo Victory
echo.
pause
exit

:Incorrect
cls
Title Lose
echo Incorrect Answer
echo.
pause
goto Level_1
exit