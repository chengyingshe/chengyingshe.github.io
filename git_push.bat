@echo off
REM 自动 add、commit（带时间）、push

for /f "tokens=1-2 delims==." %%a in ('wmic os get localdatetime /value') do set datetime=%%b
set datestamp=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%

git add .
git commit -m "update %datestamp%"
git push 