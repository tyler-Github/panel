#!/bin/sh 
LD_LIBRARY_PATH=".:bin:$LD_LIBRARY_PATH"
mono-service ugccmonsvc.exe
