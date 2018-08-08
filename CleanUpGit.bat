@echo off
for /F %%b in ('git branch') do (
echo Processing %%b
pause
echo Started cleaning the changes.
git reset --hard origin/%%b
echo Finished cleaning the changes.
pause
echo packages >> .gitignore
git add .gitignore
pause
git commit -m "added ignorable files/directories"
pause
git rm -r --cached .
pause
git add .
pause
git commit -am "Removed the ignored files"
git push
)