
Param(
[string]$sauceUserName,
[string]$sauceAccessKey,
[string]$rdcVodQaNativeAppApiKey,
[string]$rdcSauceDemoIosRdcApiKey
)
Write-Output "sauce.userName value from ADO was passed as an Argument in the ADO Task called `$env:SAUCE_USERNAME` " +
"to sauceUserName variable in the Posh. This is the value found=>$sauceUserName"
Write-Output "sauce.accessKey value from ADO was passed as an Argument in the ADO Task called `$env:SAUCE_ACCESS_KEY` " +
"to sauceAccessKey variable in the Posh. This is the value found=>$sauceAccessKey"
Write-Output "sauce.rdc.VodQaNativeAppApiKey stored in Azure DevOps=>$rdcVodQaNativeAppApiKey"
Write-Output "sauce.rdc.SauceDemoIosRdcApiKey stored in Azure DevOps=>$rdcSauceDemoIosRdcApiKey"

[Environment]::SetEnvironmentVariable("SAUCE_USERNAME", "$sauceUserName", "User")
[Environment]::SetEnvironmentVariable("SAUCE_ACCESS_KEY", "$sauceAccessKey", "User")
[Environment]::SetEnvironmentVariable("VODQC_RDC_API_KEY", "$rdcVodQaNativeAppApiKey", "User")
[Environment]::SetEnvironmentVariable("SAUCE_DEMO_IOS_RDC_API_KEY", "$rdcSauceDemoIosRdcApiKey", "User")
