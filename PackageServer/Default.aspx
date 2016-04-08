<%@ Page Language="C#" %>
<%@ Import Namespace="NuGet.Server" %>
<%@ Import Namespace="NuGet.Server.Infrastructure" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>SmartGet Awesome Repository</title>
    <style>
    body { font-family: Consolas; }

    fieldset ol {
        font-size: 14px;
    }

    .smart-modal {
        position: fixed;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba(0, 0, 0, 0.8);
        z-index: 99999;
        opacity: 0;
        -webkit-transition: opacity 400ms ease-in;
        -moz-transition: opacity 400ms ease-in;
        transition: opacity 400ms ease-in;
        pointer-events: none;
    }

    .smart-modal:target {
        opacity: 1;
        pointer-events: auto;
    }

    .smart-modal > div {
        width: 700px;
        position: relative;
        margin: 10% auto;
        padding: 5px 20px 13px 20px;
        border-radius: 10px;
        background: #fff;
        background: -moz-linear-gradient(#fff, #999);
        background: -webkit-linear-gradient(#fff, #999);
        background: -o-linear-gradient(#fff, #999);
    }

    #solution.smart-modal > div {
        width: 810px;
    }

    .close {
        background: #606061;
        color: #FFFFFF;
        line-height: 25px;
        position: absolute;
        right: -12px;
        text-align: center;
        top: -10px;
        width: 24px;
        text-decoration: none;
        font-weight: bold;
        -webkit-border-radius: 12px;
        -moz-border-radius: 12px;
        border-radius: 12px;
        -moz-box-shadow: 1px 1px 3px #000;
        -webkit-box-shadow: 1px 1px 3px #000;
        box-shadow: 1px 1px 3px #000;
    }

    .close:hover {
        background: #00d9ff;
    }
    </style>
</head>
<body>
    <div>
        <h2>Welcome to SmartTest</h2>
        <h4>This SmartAzz Server is running NuGet.Server v<%= typeof(NuGet.Server.DataServices.ODataPackage).Assembly.GetName().Version %></h4>
        <p>
            Click <a href="<%= VirtualPathUtility.ToAbsolute("~/nuget/Packages") %>">here</a> to our packages of total awesomeness (only xml view - no markup).
        </p>

        <fieldset style="width:800px">
            <legend><strong>Add the repo to your Visual Studio (GLOBAL) like this:</strong></legend>
            
            <ol>
                <li>Goto Tools -> Nuget Package Manager -> Package Manager Settings</li>
                <li>Click "Package Sources" (see the <a href="#options">Options Image</a>)</li>
                <li>Add new source (the green plus)</li>
                <li>Mark the new source and enter: <%= Helpers.GetRepositoryUrl(Request.Url, Request.ApplicationPath) %> </li>
                <li>Name it "SmartGet" and remember to hit "Update" before you hit "OK"</li>
            </ol>

            <p>All theres left, is to <i>Rock on !</i></p>
           
            

            <div id="options" class="smart-modal">
                <div>
                    <a href="#close" title="Close" class="close">X</a>
                    <b>Global Options</b>
                    <img style="margin:7.5px 7.5px;" src='Images/global-options.jpg' />
                </div>
            </div>



        </fieldset>

        <fieldset style="width:800px">
            <legend><strong>Add the repo to your Visual Studio Solution (LOCALLY) like this:</strong></legend>
           
              <ol>
                <li>Left click the solution name and click "Manage NuGet Packages for Solution"</li>
                <li>"follow the <s>white rabbit</s> <ins>green line</ins>" -> <a href="#solution">Solution Image</a></li>
                <li>Note: If you´ve added the repo globally, you can just select it here</li>
                <li>Else add the source the same way as above</li>
            </ol>
                  
             <div id="solution" class="smart-modal">
                <div>
                    <a href="#close" title="Close" class="close">X</a>
                    <b>Solution</b>
                    <img style="margin:7.5px 7.5px;width:800px;" src='Images/solution.jpg' />
                </div>
            </div>                 
        </fieldset>

        <% if (Request.IsLocal) { %>
        <fieldset style="width:800px">
            <legend><strong>Adding packages (manually)</strong></legend>

            To add packages to the SmartGet Server put package files (.nupkg files) in the folder
            <code><% = PackageUtility.PackagePhysicalPath %></code><br/><br/>

            Click <a href="<%= VirtualPathUtility.ToAbsolute("~/nugetserver/api/clear-cache") %>">here</a> to clear the package cache.
        </fieldset>
        <% } %>
    </div>

    <div style="border:1px solid #000;background: #eee;padding: 15px; box-shadow: 1px 1px 3px #000; width: 800px;margin-left: 3px;margin-top: 15px;">
        <em style="font-size: 12px;">
            <strong>Disclaimer:</strong><br />
            Please note, that this page has been create without the use of any "ID" attributes, inline styles, hardcoded texts, and (last but <ins>not</ins> least) NO changes have been made to any Bootstrap files during development of this server<br /><br />
            &nbsp;&nbsp;-&nbsp;N.N.
        </em>
    </div>
</body>
</html>
