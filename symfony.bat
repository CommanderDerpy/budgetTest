@ECHO OFF
CHOICE /M "Did you read the comments in the batch file?" /C YN 
IF ERRORLEVEL 2 GOTO SLACKER
REM ************** REQUIRED ***************
REM Ensure you have copied the PHP folder from C:\Program Files (x86)\IIS Express\
REM to the root of your D drive.
REM Also ensure the PHP folder contains:
REM		temp (folder)
REM		v7.0 (folder)
REM		cacert.pem
REM		symfony.php
REM
REM Copy the php.ini into the v7.0 folder (overwrite the existing one)
REM
REM ****** Why are we doing this ******
REM You don't have access to php installed on C:\Program Files (x86)\IIS Express\
REM Therefore you must use the php.exe on your D: Drive
REM to execute the symphony.php script which can create a new symfony project.
REM
REM Run this bat with no arguments to see a list of possible arguments
REM Run this bat from the command prompt when you run is
J:\PHP-symfony\v7.0\php "%~dp0symfony" %*
pause
GOTO END
:SLACKER
notepad %0
:END