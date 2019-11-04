throw "This is for demo purposes only."

try
{
    Get-Process fdsfds -ErrorVariable mybestvariablename -ErrorAction Stop
}
catch
{
    Write-Output "Found process"
    Write-Output $mybestvariablename[0]
    #Write-Verbose $PSItem.Exception
}