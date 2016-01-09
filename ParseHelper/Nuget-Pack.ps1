<#
.DESCRIPTION
Package this dll as a Nuget
Relies on Nuget being on the path
You can get nuget from:
https://dist.nuget.org/win-x86-commandline/latest/nuget.exe
or go to
https://www.nuget.org/
to download manually
#>
Set-Location $PSScriptRoot
Nuget pack .\ParseHelper.csproj -Prop Configuration=Release -Build 
#now copy to the nuget package location you have added to your visual studio 
#as the source for this nuget
Copy-Item -Path .\ParseHelper.*.nupkg -Destination "C:\G\a\nuget\packages" -force
