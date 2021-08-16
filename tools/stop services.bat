@echo off
echo Stopping services....
echo Stopping Web Panel
net stop ugcc-www
echo Stopping Monitor
net stop ugccmon
Pause