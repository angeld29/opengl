@echo off
cd build
call "C:\Program Files (x86)\Microsoft Visual C++ Build Tools\vcbuildtools_msbuild.bat" 

msbuild hello.sln  /t:Build /p:Configuration=Release