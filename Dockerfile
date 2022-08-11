FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY headversity_devops.csproj .
RUN dotnet restore "headversity_devops.csproj"
COPY . .
RUN dotnet publish "headversity_devops.csproj" -c Release -o /publish

FROM mcr.microsoft.com/dotnet/aspnet:6.0 as final
WORKDIR /app
COPY --from=build /publish .
ENTRYPOINT [ "dotnet", "headversity_devops.dll" ]
