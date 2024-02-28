
REM path to the folder of your github repository
SET GIT_DIR="/c/Users/lucky/Desktop/gitAutomationTest"

REM Change to the Git directory
cd /d %GIT_DIR%

REM Add all files to the staging area
git add --all

REM Check if there are any changes to commit
git diff-index --quiet HEAD --

REM ERRORLEVEL stores the return value of the last extecuted line of code
IF %ERRORLEVEL% EQU 0 (
    REM No changes to commit
    EXIT /B 0
)

SET commitMessage=File contents added 

REM Commit changes with the provided message
git commit -m "%commitMessage%"

REM Push changes to the remote repository
git push origin master

