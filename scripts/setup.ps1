# creating a new project

dotnet new globaljson --sdk-version 3.1.101 --output SportsSln/SportsStore
dotnet new web --no-https --output SportsSln/SprtsStore --framework netcoreapp3.1
dotnet new sln -o SportsSln
dotnet sln SportsSln add SportsSln/SportsStore

# create xunit test project
dotnet new xunit -o SportsStore/SportsStore.Tests --framework netcoreapp3.1
dotnet sln SportsSln add SportsSln/SportsStore
dotnet add SportsSln/SportsStore.Tests  reference SportsSln/SportsStore

# installing moq
dotnet add SportsSln/SportsStore.Tests package Moq --version 4.13.1

# install entity framework

dotnet add package Microsoft.EntityFrameworkCore.Design --version 3.1.1
dotnet add package Microsoft.EntityFrameworkCore.SqlServer -version 3.1.1

dotnet tool install --global dotnet-ef
dotnet ef database drop
dotnet ef database drop --force --context StoreDbContext