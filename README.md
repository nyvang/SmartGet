# SmartGet Server #

Application files for an IIS site hosting NuGet packages 

## Description ##

    Built upon the NuGet.Server, this server application hosts packages for use in our projects. 

## Installation ##

    Get all files & folders within the Packages folder except the project files (*.csproj) 
    and place them in a folder on your webserver or a local server if usage should be local only.
    
    Create a new website in your IIS adding the folder from before as an application to the website.
    
    *Note:* Remember to clear the access to the folder from the Application Pool

    Start the website and browse address of the server:port/website/folder


## Frequently Asked Questions ##

    #### How to add packages ###
    
    Packages can be added by manual copy paste the package files to the */Packages folder of the application. 
    After first run, the server will place the packages in correct subdirectories.

    Packages can also be pushed by the cli with the following command:
   
      nuget push <packageName.nupkg> -s http://<serverAddress>/SmartGet/nuget <ApiKey></>
  
    For this you need the nuget.exe file which can be found here:
    https://dist.nuget.org/win-x86-commandline/latest/nuget.exe  
    

## Changelog

= 1.0 =
* Added Default.aspx and som information on how to add the server address to Visual Studio
* Added the project to source control

= 0.5 =
* Initial version.

## Upgrade Notice

= 1.0 =
None yet


