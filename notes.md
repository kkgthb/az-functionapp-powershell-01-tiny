## Misc

* https://learn.microsoft.com/en-us/azure/azure-functions/functions-reference-powershell
    * Standard file structure:
        ```
        PSFunctionApp
        | - MyFunction
        | | - run.ps1
        | | - function.json
        | - Modules
        | | - MyCustomModule
        | | - MyOtherCustomModule
        | | - MySpecialModule.psm1
        | - local.settings.json
        | - host.json
        | - requirements.psd1
        ```
    * Longer example:
        ```
        PSFunctionApp
        | - MyFirstFunction
        | | - run.ps1
        | | - function.json
        | - MySecondFunction
        | | - run.ps1
        | | - function.json
        | - Modules
        | | - myFirstHelperModule
        | | | - myFirstHelperModule.psd1
        | | | - myFirstHelperModule.psm1
        | | - mySecondHelperModule
        | | | - mySecondHelperModule.psd1
        | | | - mySecondHelperModule.psm1
        | - local.settings.json
        | - host.json
        | - requirements.psd1
        | - profile.ps1
        | - extensions.csproj
        | - bin
        ```
    * By default, a PowerShell function is executed from `run.ps1`, a file that shares the same parent directory as its corresponding `function.json`.  The `scriptFile` property in the `function.json` can be used to use a different file and folder structure.
* https://learn.microsoft.com/en-us/azure/azure-functions/functions-get-started?pivots=programming-language-powershell
* https://github.com/brianbunke/brianbunke.github.io/blob/master/_posts/2018-02-27-powershell-in-azure-functions.md
* https://www.google.com/search?q=azure+function+app+powershell&oq=azure+function+app+powershell
* https://automationadmin.com/2022/10/ps-function-app-az-module-issue

---

`https://your_azure_function_app_name_here.azurewebsites.net/api/SayHello`