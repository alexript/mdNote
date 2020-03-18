@echo off
set _DOTNET_SDK_VERSION=3.1.200
if defined DOTNETCORE_PATH ( 
    %DOTNETCORE_PATH%\dotnet.exe %*
) else (
    ..\..\DotNET\SDK\%_DOTNET_SDK_VERSION%\dotnet.exe %*
)

