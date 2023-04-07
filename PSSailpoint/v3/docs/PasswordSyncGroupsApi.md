# PSSailpoint.PSSailpoint/Api.PasswordSyncGroupsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PasswordSyncGroup**](PasswordSyncGroupsApi.md#New-PasswordSyncGroup) | **POST** /password-sync-groups | Create Password Sync Group


<a name="New-PasswordSyncGroup"></a>
# **New-PasswordSyncGroup**
> PasswordSyncGroup New-PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordSyncGroup] <PSCustomObject><br>

Create Password Sync Group

This API creates a password sync group based on the specifications provided. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordSyncGroup = Initialize-PasswordSyncGroup -Id "6881f631-3bd5-4213-9c75-8e05cc3e35dd" -Name "Password Sync Group 1" -PasswordPolicyId "2c91808d744ba0ce01746f93b6204501" -SourceIds "MySourceIds" # PasswordSyncGroup | 

# Create Password Sync Group
try {
    $Result = New-PasswordSyncGroup -PasswordSyncGroup $PasswordSyncGroup
} catch {
    Write-Host ("Exception occurred when calling New-PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PasswordSyncGroup** | [**PasswordSyncGroup**](PasswordSyncGroup.md)|  | 

### Return type

[**PasswordSyncGroup**](PasswordSyncGroup.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

