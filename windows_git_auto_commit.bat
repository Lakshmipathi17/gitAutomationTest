
REM path to the folder of your github repository
cd /d "C:\Users\lucky\Desktop\gitAutomationTest"

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

git push --set-upstream origin main

REM Push changes to the remote repository
git push  origin

