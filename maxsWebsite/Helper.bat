::Author: CST212 -- Maximilian Gewers
ECHO OFF
:MENU
CLS
ECHO.
ECHO .................................................
ECHO WARNING: No error checking
ECHO Has to be run in Project DIR
ECHO .................................................

ECHO.
ECHO 1 - Create Database - - - - - - - - -"PHP bin/console dotrine:database:create"
ECHO 2 - Generate Entity - - - - - - - - -"php bin/console doctrine:generate:entity"
ECHO 3 - Generate Crud - - - - - - - - - -"php bin/console generate:doctrine:crud"
ECHO 4 - Update Database Schema - - - - - "PHP bin/console doctrine:schema:update"
ECHO 5 - Update Database Schema (Force) - "PHP bin/console doctrine:schema:update --force"
ECHO 6 - Load Database Fixtures - - - - - "php bin/console doctrine:fixtures:load"
ECHO 7 - Drop Database - - - - - - - - - -"php bin/console doctrine:schema:drop"
ECHO 8 - RUN SERVER ON PORT 8000 - - - - -"php bin/console server:run"
ECHO 9 - EXIT
ECHO.
SET /P M=Type 1, 2, 3, 4, 5, 6, 7 , 8or 9 then press ENTER:
CLS
IF %M%==1 GOTO CREATE
IF %M%==2 GOTO ENTITY
IF %M%==3 GOTO CRUD
IF %M%==4 GOTO SCHEMA
IF %M%==5 GOTO SCHEMAF
IF %M%==6 GOTO FIXTURELOAD
IF %M%==7 GOTO DROPDB
IF %M%==8 GOTO RUN
IF %M%==9 GOTO EOF

:CREATE
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
PHP bin/console doctrine:database:create
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
GOTO ENDOFCOMMAND
:ENTITY
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
php bin/console doctrine:generate:entity
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
ECHO NOTE: Database does not have this Entity yet!
GOTO ENDOFCOMMAND
:CRUD:
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
php bin/console generate:doctrine:crud
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
GOTO ENDOFCOMMAND
:SCHEMA
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
ECHO Make sure to close your DB!
PHP bin/console doctrine:schema:update
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
GOTO ENDOFCOMMAND
:SCHEMAF
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
ECHO Make sure to close your DB!
PHP bin/console doctrine:schema:update --force
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
GOTO ENDOFCOMMAND
:FIXTURELOAD
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
php bin/console doctrine:fixtures:load
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
GOTO ENDOFCOMMAND
:DROPDB
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
php bin/console doctrine:schema:drop
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
GOTO ENDOFCOMMAND
:RUN
ECHO .................................................
ECHO ..................COMMAND PRINT..................
ECHO .................................................
php bin/console doctrine:schema:drop
ECHO .................................................
ECHO ..................CONSOLE END....................
ECHO .................................................
GOTO ENDOFCOMMAND

:ENDOFCOMMAND
set /p var=Press 1 to continue OR 2 for Exit [1/2] 
if %var%== 1 goto MENU
if %var%== 2 goto EOF
GOTO MENU