@echo off

cd ".\tools\"
call JackCompiler.bat "..\src"
cd "..\src"
timeout /t 1 /nobreak
move *.vm "..\vm"
timeout /t 1 /nobreak
del *.vm
cd "..\tools"
timeout /t 1 /nobreak
call VMEmulator.bat