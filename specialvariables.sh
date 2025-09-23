#!/bin/bash

echo "all variables passed to the script;$@"
echo "all variables passed to the script;$*"
echo "script name:$0"
echo "current directory:$PWD"
echo "home directory:$HOME"
echo "pid of the script:$$"
sleep 5&
echo "pid of last command in background is:$!"
echo " exit status of last executed command:$?"
