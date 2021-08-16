#!/bin/sh

pid=`/bin/cat /tmp/ugccmonsvc.exe.lock`
kill $pid
kill -9 $pid
rm /tmp/ugccmonsvc.exe.lock

