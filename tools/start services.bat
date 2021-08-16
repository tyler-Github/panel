@echo off
echo Starting services....
echo Starting Web Panel
net start ugcc-www
echo Starting Monitor
net start ugccmon
Pause