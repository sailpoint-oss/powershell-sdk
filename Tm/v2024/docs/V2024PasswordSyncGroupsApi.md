# Tm.V2024.Tm.V2024\Api.V2024PasswordSyncGroupsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024PasswordSyncGroup**](V2024PasswordSyncGroupsApi.md#New-V2024PasswordSyncGroup) | **POST** /password-sync-groups | Create Password Sync Group
[**Remove-V2024PasswordSyncGroup**](V2024PasswordSyncGroupsApi.md#Remove-V2024PasswordSyncGroup) | **DELETE** /password-sync-groups/{id} | Delete Password Sync Group by ID
[**Get-V2024PasswordSyncGroup**](V2024PasswordSyncGroupsApi.md#Get-V2024PasswordSyncGroup) | **GET** /password-sync-groups/{id} | Get Password Sync Group by ID
[**Get-V2024PasswordSyncGroups**](V2024PasswordSyncGroupsApi.md#Get-V2024PasswordSyncGroups) | **GET** /password-sync-groups | Get Password Sync Group List
[**Update-V2024PasswordSyncGroup**](V2024PasswordSyncGroupsApi.md#Update-V2024PasswordSyncGroup) | **PUT** /password-sync-groups/{id} | Update Password Sync Group by ID


<a id="New-V2024PasswordSyncGroup"></a>
# **New-V2024PasswordSyncGroup**
> PasswordSyncGroup New-V2024PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordSyncGroup] <PSCustomObject><br>

Create Password Sync Group

This API creates a password sync group based on the specifications provided. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordSyncGroup = Initialize-PasswordSyncGroup -Id "6881f631-3bd5-4213-9c75-8e05cc3e35dd" -Name "Password Sync Group 1" -PasswordPolicyId "2c91808d744ba0ce01746f93b6204501" -SourceIds "MySourceIds" -Created (Get-Date) -Modified (Get-Date) # PasswordSyncGroup | 

# Create Password Sync Group
try {
    $Result = New-V2024PasswordSyncGroup -PasswordSyncGroup $PasswordSyncGroup
} catch {
    Write-Host ("Exception occurred when calling New-V2024PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024PasswordSyncGroup"></a>
# **Remove-V2024PasswordSyncGroup**
> void Remove-V2024PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Password Sync Group by ID

This API deletes the specified password sync group. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "6881f631-3bd5-4213-9c75-8e05cc3e35dd" # String | The ID of password sync group to delete.

# Delete Password Sync Group by ID
try {
    $Result = Remove-V2024PasswordSyncGroup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PasswordSyncGroup"></a>
# **Get-V2024PasswordSyncGroup**
> PasswordSyncGroup Get-V2024PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Password Sync Group by ID

This API returns the sync group for the specified ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "6881f631-3bd5-4213-9c75-8e05cc3e35dd" # String | The ID of password sync group to retrieve.

# Get Password Sync Group by ID
try {
    $Result = Get-V2024PasswordSyncGroup -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024PasswordSyncGroups"></a>
# **Get-V2024PasswordSyncGroups**
> PasswordSyncGroup[] Get-V2024PasswordSyncGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Get Password Sync Group List

This API returns a list of password sync groups. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Get Password Sync Group List
try {
    $Result = Get-V2024PasswordSyncGroups -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024PasswordSyncGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024PasswordSyncGroup"></a>
# **Update-V2024PasswordSyncGroup**
> PasswordSyncGroup Update-V2024PasswordSyncGroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordSyncGroup] <PSCustomObject><br>

Update Password Sync Group by ID

This API updates the specified password sync group. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "6881f631-3bd5-4213-9c75-8e05cc3e35dd" # String | The ID of password sync group to update.
$PasswordSyncGroup = Initialize-PasswordSyncGroup -Id "6881f631-3bd5-4213-9c75-8e05cc3e35dd" -Name "Password Sync Group 1" -PasswordPolicyId "2c91808d744ba0ce01746f93b6204501" -SourceIds "MySourceIds" -Created (Get-Date) -Modified (Get-Date) # PasswordSyncGroup | 

# Update Password Sync Group by ID
try {
    $Result = Update-V2024PasswordSyncGroup -Id $Id -PasswordSyncGroup $PasswordSyncGroup
} catch {
    Write-Host ("Exception occurred when calling Update-V2024PasswordSyncGroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

