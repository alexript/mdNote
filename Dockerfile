FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src

# copy csproj and restore as distinct layers
COPY *.csproj .
COPY *.config ./
RUN dotnet restore

# copy and publish app and libraries
COPY ./src/ ./src/
COPY *.cs .
RUN dotnet publish -c release -o /app --no-restore

# final stage/image
FROM mcr.microsoft.com/dotnet/core/runtime:3.1
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["./mdNote.exe"]