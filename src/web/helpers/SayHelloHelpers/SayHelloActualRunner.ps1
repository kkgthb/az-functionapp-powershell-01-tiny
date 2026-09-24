# Add some data types
using namespace System.Net

# Input bindings are passed in via param block.
param($Request)

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# ################################
# BEGIN:  The meat of the function
# ################################

$Request.Headers.GetEnumerator() | ForEach-Object {
    Write-Host "$($_.Key): $($_.Value)"
}

$body = @"
From a PowerShell Azure Function - Hello World!
"@

# ##############################
# END:  The meat of the function
# ##############################

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding `
    -Name "Response" `
    -Value ([HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body       = $body
    })