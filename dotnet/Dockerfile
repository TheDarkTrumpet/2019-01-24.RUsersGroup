FROM microsoft/dotnet AS run
WORKDIR /app

COPY *.csproj ./
RUN dotnet restore
COPY . ./
RUN dotnet build

ENTRYPOINT ["dotnet", "run"]