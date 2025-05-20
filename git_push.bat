@echo off
REM 自动 add、commit（带时间）、push

REM 获取当前时间，格式为 YYYY-MM-DD HH:MM:SS
for /f "tokens=1-3 delims=/- " %%a in ("%date%") do (
    set yyyy=%%a
    set mm=%%b
    set dd=%%c
)
for /f "tokens=1-3 delims=: " %%a in ("%time%") do (
    set hh=%%a
    set nn=%%b
    set ss=%%c
)
set datestamp=%yyyy%-%mm%-%dd% %hh%:%nn%:%ss%

git add .
git commit -m "update %datestamp%"
git push