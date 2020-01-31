@echo off
if defined DOTNETCORE_PATH ( 
    %DOTNETCORE_PATH%\dotnet.exe %*
) else (
    ..\..\DotNET\SDK\3.1.101\dotnet.exe %*
)

