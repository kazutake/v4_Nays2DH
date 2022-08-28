@echo off

call "C:\Program Files (x86)\Intel\oneAPI\setvars.bat" intel64 vs2019

rem ----------------------------------------------------------------------
rem ifort compile aaa
rem ----------------------------------------------------------------------
ifort .\src\iric.f90  /Qopenmp /nostandard-realloc-lhs /MD /c
ifort .\src\Nays2DH.f90 /Qopenmp /nostandard-realloc-lhs /MD /c
ifort *.obj .\lib\iriclib.lib -o Nays2DH.exe
del *.obj
del *.mod

copy /y .\Nays2DH.exe .\INSTALL
