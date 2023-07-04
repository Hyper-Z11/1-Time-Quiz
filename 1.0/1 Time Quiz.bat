@echo off
:Menu_1
title 1 Time Quiz
cls
echo Version Beta 1.0
echo.
echo S = Start Game
echo H = How To Play
echo C = Credit
echo Q = Quit
echo.

:Menu
Set /p input=Type that to do:
if /i %input%==S goto Start
if /i %input%==H goto How
if /i %input%==C goto Credit
if /i %input%==Q goto Quit
if /i not %input%==S.H.C.Q goto Back_Menu

:Back_Menu
echo Invalid Letter
echo.
goto Menu

:Back_Credit
echo Invalid Letter
echo.
goto Credit_Type

:Back_How
echo Invalid Letter
echo.
goto How_Type

:Start
start data\Play.bat
exit

:How
cls
title How To Play
echo You must answer with correct answer.
echo If you answer incorrect answer, you must try again from start.
echo Type Answer is A,B,C,or D
echo every 5 questions, at the end there is a question whose answer is typed, not a choice.
echo So to provide spaces, use underscores
echo Ok, Good Luck
echo.
echo B = Back

:How_Type
Set /p input=Type that to do:
if /i %input%==B goto Menu_1
if /i not %input%==B goto Back_How

:Credit
cls
title Credit
echo Creator:Hyper-Z11 (Github)
echo Made in:24/06/2023
echo.
echo B = Back

:Credit_Type
Set /p input=Type that to do:
if /i %input%==B goto Menu_1
if /i not %input%==B goto Back_Credit

:Quit 
echo Are you sure to Quit?
echo Y = Yes
echo N = No

:Quit_1
Set /p input=Type that to do:
if /i %input%==Y goto Yes
if /i %input%==N goto Menu_1
if /i not %input%==Y.N goto Back_Quit

:Yes
exit

:Back_Quit
echo Invalid Letter
echo.
goto Quit_1