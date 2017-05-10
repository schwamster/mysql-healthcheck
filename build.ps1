Remove-Item .\src\healthcheck\bin\Release -Force -Recurse
dotnet publish -c release
docker build -t mysqlhealthcheck .