# PSSailpoint.PSSailpoint/Api.AccountsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Account**](AccountsApi.md#New-Account) | **POST** /accounts | Create Account
[**Remove-Account**](AccountsApi.md#Remove-Account) | **DELETE** /accounts/{id} | Delete Account
[**Disable-Account**](AccountsApi.md#Disable-Account) | **POST** /accounts/{id}/disable | Disable Account
[**Enable-Account**](AccountsApi.md#Enable-Account) | **POST** /accounts/{id}/enable | Enable Account
[**Get-Account**](AccountsApi.md#Get-Account) | **GET** /accounts/{id} | Account Details
[**Get-AccountEntitlements**](AccountsApi.md#Get-AccountEntitlements) | **GET** /accounts/{id}/entitlements | Account Entitlements
[**Get-Accounts**](AccountsApi.md#Get-Accounts) | **GET** /accounts | Accounts List
[**Send-Account**](AccountsApi.md#Send-Account) | **PUT** /accounts/{id} | Update Account
[**Invoke-ReloadAccount**](AccountsApi.md#Invoke-ReloadAccount) | **POST** /accounts/{id}/reload | Reload Account
[**Unlock-Account**](AccountsApi.md#Unlock-Account) | **POST** /accounts/{id}/unlock | Unlock Account
[**Update-Account**](AccountsApi.md#Update-Account) | **PATCH** /accounts/{id} | Update Account


<a name="New-Account"></a>
# **New-Account**
> AccountsAsyncResult New-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountAttributesCreate] <PSCustomObject><br>

Create Account

This API submits an account creation task and returns the task ID.   The `sourceId` where this account will be created must be included in the `attributes` object. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$AccountAttributesCreate = Initialize-AccountAttributesCreate -Attributes # AccountAttributesCreate | 

# Create Account
try {
    $Result = New-Account -AccountAttributesCreate $AccountAttributesCreate
} catch {
    Write-Host ("Exception occurred when calling New-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **AccountAttributesCreate** | [**AccountAttributesCreate**](AccountAttributesCreate.md)|  | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-Account"></a>
# **Remove-Account**
> AccountsAsyncResult Remove-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Account

This API submits an account delete task and returns the task ID. This operation can only be used on Flat File Sources. Any attempt to execute this request on the source of other type will result in an error response with a status code of 400. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account ID

# Delete Account
try {
    $Result = Remove-Account -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account ID | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Disable-Account"></a>
# **Disable-Account**
> AccountsAsyncResult Disable-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountToggleRequest] <PSCustomObject><br>

Disable Account

This API submits a task to disable the account and returns the task ID.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id
$AccountToggleRequest = Initialize-AccountToggleRequest -ExternalVerificationId "3f9180835d2e5168015d32f890ca1581" -ForceProvisioning $false # AccountToggleRequest | 

# Disable Account
try {
    $Result = Disable-Account -Id $Id -AccountToggleRequest $AccountToggleRequest
} catch {
    Write-Host ("Exception occurred when calling Disable-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account id | 
 **AccountToggleRequest** | [**AccountToggleRequest**](AccountToggleRequest.md)|  | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Enable-Account"></a>
# **Enable-Account**
> AccountsAsyncResult Enable-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountToggleRequest] <PSCustomObject><br>

Enable Account

This API submits a task to enable account and returns the task ID.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id
$AccountToggleRequest = Initialize-AccountToggleRequest -ExternalVerificationId "3f9180835d2e5168015d32f890ca1581" -ForceProvisioning $false # AccountToggleRequest | 

# Enable Account
try {
    $Result = Enable-Account -Id $Id -AccountToggleRequest $AccountToggleRequest
} catch {
    Write-Host ("Exception occurred when calling Enable-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account id | 
 **AccountToggleRequest** | [**AccountToggleRequest**](AccountToggleRequest.md)|  | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Account"></a>
# **Get-Account**
> Account Get-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Account Details

This API returns the details for a single account based on the ID.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account ID

# Account Details
try {
    $Result = Get-Account -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account ID | 

### Return type

[**Account**](Account.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-AccountEntitlements"></a>
# **Get-AccountEntitlements**
> EntitlementDto[] Get-AccountEntitlements<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Account Entitlements

This API returns entitlements of the account.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Account Entitlements
try {
    $Result = Get-AccountEntitlements -Id $Id -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-AccountEntitlements: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account id | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**EntitlementDto[]**](EntitlementDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Accounts"></a>
# **Get-Accounts**
> Account[] Get-Accounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Accounts List

This returns a list of accounts.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "identityId eq "2c9180858082150f0180893dbaf44201"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **identityId**: *eq, co, ge, gt, in, le, lt, ne, isnull, sw*  **name**: *eq, in, co, ge, gt, ne, isnull, sw*  **nativeIdentity**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **sourceId**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **uncorrelated**: *eq* (optional)
$Sorters = "id,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, created, modified, sourceId, identityId, nativeIdentity, uuid, manuallyCorrelated** (optional)

# Accounts List
try {
    $Result = Get-Accounts -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-Accounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **identityId**: *eq, co, ge, gt, in, le, lt, ne, isnull, sw*  **name**: *eq, in, co, ge, gt, ne, isnull, sw*  **nativeIdentity**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **sourceId**: *eq, in, co, ge, gt, le, lt, ne, isnull, sw*  **uncorrelated**: *eq* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, created, modified, sourceId, identityId, nativeIdentity, uuid, manuallyCorrelated** | [optional] 

### Return type

[**Account[]**](Account.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-Account"></a>
# **Send-Account**
> AccountsAsyncResult Send-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountAttributes] <PSCustomObject><br>

Update Account

This API submits an account update task and returns the task ID.   A token with ORG_ADMIN authority is required to call this API. >**NOTE: The PUT Account API is designated only for Delimited File sources.**

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account ID
$AccountAttributes = Initialize-AccountAttributes -Attributes @{ key_example =  } # AccountAttributes | 

# Update Account
try {
    $Result = Send-Account -Id $Id -AccountAttributes $AccountAttributes
} catch {
    Write-Host ("Exception occurred when calling Send-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account ID | 
 **AccountAttributes** | [**AccountAttributes**](AccountAttributes.md)|  | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ReloadAccount"></a>
# **Invoke-ReloadAccount**
> AccountsAsyncResult Invoke-ReloadAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Reload Account

This API asynchronously reloads the account directly from the connector and performs a one-time aggregation process.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id

# Reload Account
try {
    $Result = Invoke-ReloadAccount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-ReloadAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account id | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Unlock-Account"></a>
# **Unlock-Account**
> AccountsAsyncResult Unlock-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountUnlockRequest] <PSCustomObject><br>

Unlock Account

This API submits a task to unlock an account and returns the task ID.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id
$AccountUnlockRequest = Initialize-AccountUnlockRequest -ExternalVerificationId "3f9180835d2e5168015d32f890ca1581" -UnlockIDNAccount $false -ForceProvisioning $false # AccountUnlockRequest | 

# Unlock Account
try {
    $Result = Unlock-Account -Id $Id -AccountUnlockRequest $AccountUnlockRequest
} catch {
    Write-Host ("Exception occurred when calling Unlock-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account id | 
 **AccountUnlockRequest** | [**AccountUnlockRequest**](AccountUnlockRequest.md)|  | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Account"></a>
# **Update-Account**
> SystemCollectionsHashtable Update-Account<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Account

Use this API to modify the following fields: * `identityId`  * `manuallyCorrelated`  >**NOTE: All other fields cannot be modified.**  The request must provide a JSONPatch payload.  A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account ID
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Update Account
try {
    $Result = Update-Account -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-Account: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account ID | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

