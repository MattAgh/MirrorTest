@echo off
for /F %%b in ('git branch') do (
echo Processing %%b
echo Started cleaning the changes.
git clean -fd
echo Finished cleaning the changes.
echo packages2 >> .gitignore
git add .gitignore
git commit -m "added ignorable files/directories"
git push
git rm -r --cached .
git add .
git commit -am "Removed the ignored files"
git push
)