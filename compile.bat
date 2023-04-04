@echo off

pushd %~dp0

cd ".\tools\"
call JackCompiler.bat "..\src"
cd "..\src"
move *.vm "..\vm"
cd "..\tools"
call VMEmulator.bat

popd