FROM mcr.microsoft.com/dotnet/sdk:9.0-preview AS build
WORKDIR /src
COPY *.sln .
COPY BackendAPI/*.csproj ./BackendAPI/
RUN dotnet restore
COPY . .
WORKDIR /src/BackendAPI
RUN dotnet publish -c Release -o /app

FROM mcr.microsoft.com/dotnet/aspnet:9.0-preview
WORKDIR /app
COPY --from=build /app .
EXPOSE 80
ENTRYPOINT ["dotnet", "BackendAPI.dll"]