@echo off

cd ".\tools\"
start JackCompiler.bat "..\src"
pause
cd "..\src"
move *.vm "..\vm"
pause
del *.vm