# PSSailpoint.V3.PSSailpoint.V3\Api.PasswordSyncGroupsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PasswordSyncGroup**](PasswordSyncGroupsApi.md#New-PasswordSyncGroup) | **POST** /password-sync-groups | Create Password Sync Group
[**Remove-PasswordSyncGroup**](PasswordSyncGroupsApi.md#Remove-PasswordSyncGroup) | **DELETE** /password-sync-groups/{id} | Delete Password Sync Group by ID
[**Get-PasswordSyncGroup**](PasswordSyncGroupsApi.md#Get-PasswordSyncGroup) | **GET** /password-sync-groups/{id} | Get Password Sync Group by ID
[**Get-PasswordSyncGroups**](PasswordSyncGroupsApi.md#Get-PasswordSyncGroups) | **GET** /password-sync-groups | Get Password Sync Group List
[**Update-PasswordSyncGroup**](PasswordSyncGroupsApi.md#Update-PasswordSyncGroup) | **PUT** /password-sync-groups/{id} | Update Password Sync Group by ID


<a id="New-PasswordSyncGroup"></a>
# **New-PasswordSyncGroup**
> PasswordSyncGroup New-PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordSyncGroup] <PSCustomObject><br>

Create Password Sync Group

This API creates a password sync group based on the specifications provided.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordSyncGroup = Initialize-PasswordSyncGroup -Id "6881f631-3bd5-4213-9c75-8e05cc3e35dd" -Name "Password Sync Group 1" -PasswordPolicyId "2c91808d744ba0ce01746f93b6204501" -SourceIds "MySourceIds" -Created (Get-Date) -Modified (Get-Date) # PasswordSyncGroup | 

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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-PasswordSyncGroup"></a>
# **Remove-PasswordSyncGroup**
> void Remove-PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Password Sync Group by ID

This API deletes the specified password sync group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "6881f631-3bd5-4213-9c75-8e05cc3e35dd" # String | The ID of password sync group to delete.

# Delete Password Sync Group by ID
try {
    $Result = Remove-PasswordSyncGroup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of password sync group to delete. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PasswordSyncGroup"></a>
# **Get-PasswordSyncGroup**
> PasswordSyncGroup Get-PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Password Sync Group by ID

This API returns the sync group for the specified ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "6881f631-3bd5-4213-9c75-8e05cc3e35dd" # String | The ID of password sync group to retrieve.

# Get Password Sync Group by ID
try {
    $Result = Get-PasswordSyncGroup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of password sync group to retrieve. | 

### Return type

[**PasswordSyncGroup**](PasswordSyncGroup.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PasswordSyncGroups"></a>
# **Get-PasswordSyncGroups**
> PasswordSyncGroup[] Get-PasswordSyncGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Get Password Sync Group List

This API returns a list of password sync groups.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Get Password Sync Group List
try {
    $Result = Get-PasswordSyncGroups -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordSyncGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**PasswordSyncGroup[]**](PasswordSyncGroup.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-PasswordSyncGroup"></a>
# **Update-PasswordSyncGroup**
> PasswordSyncGroup Update-PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordSyncGroup] <PSCustomObject><br>

Update Password Sync Group by ID

This API updates the specified password sync group.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "6881f631-3bd5-4213-9c75-8e05cc3e35dd" # String | The ID of password sync group to update.
$PasswordSyncGroup = Initialize-PasswordSyncGroup -Id "6881f631-3bd5-4213-9c75-8e05cc3e35dd" -Name "Password Sync Group 1" -PasswordPolicyId "2c91808d744ba0ce01746f93b6204501" -SourceIds "MySourceIds" -Created (Get-Date) -Modified (Get-Date) # PasswordSyncGroup | 

# Update Password Sync Group by ID
try {
    $Result = Update-PasswordSyncGroup -Id $Id -PasswordSyncGroup $PasswordSyncGroup
} catch {
    Write-Host ("Exception occurred when calling Update-PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of password sync group to update. | 
 **PasswordSyncGroup** | [**PasswordSyncGroup**](PasswordSyncGroup.md)|  | 

### Return type

[**PasswordSyncGroup**](PasswordSyncGroup.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

