@echo off

rem Set path to MySQL server bin folder
set mysql_bin_path="C:\xampp\mysql\bin"

rem Set credentials to connect to MySQL server
set mysql_user=root
set mysql_password=


rem Set backup folder path
set backup_path=D:\Test DB Backup

rem Specify the databases to be backed up
set databases_to_backup=blog_ci

rem Generate backup file name with date
for /f "delims=" %%a in ('wmic OS Get localdatetime ^| find "."') do set "datestamp=%%a"
set "datestamp=%datestamp:~0,4%-%datestamp:~4,2%-%datestamp:~6,2%"
set backup_name=my-selected-database-%datestamp%

rem Backup creation
"%mysql_bin_path%\mysqldump" --user=%mysql_user% --password=%mysql_password% %databases_to_backup% --routines --events --result-file="%backup_path%\%backup_name%.sql"
if %ERRORLEVEL% neq 0 (
    (echo Backup failed: error during dump creation) >> "%backup_path%\mysql_backup_log.txt"
) else (
    (echo Backup successful) >> "%backup_path%\mysql_backup_log.txt"
)
