@echo off
for %%b in ('git branch') do (
echo Processing %branch%

echo Started cleaning the changes.
git reset --hard origin/%branch%
echo Finished cleaning the changes.

echo "packages" >> .gitignore
git add .gitignore
git commit -m "added ignorable files/directories"

git rm -r --cached .
git add .

git commit -am "Removed the ignored files"
git push
)