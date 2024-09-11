# Tm.Beta.Tm.Beta\Api.BetaAccountsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaAccount**](BetaAccountsApi.md#New-BetaAccount) | **POST** /accounts | Create Account
[**Remove-BetaAccount**](BetaAccountsApi.md#Remove-BetaAccount) | **DELETE** /accounts/{id} | Delete Account
[**Remove-BetaAccountAsync**](BetaAccountsApi.md#Remove-BetaAccountAsync) | **POST** /accounts/{id}/remove | Remove Account
[**Disable-BetaAccount**](BetaAccountsApi.md#Disable-BetaAccount) | **POST** /accounts/{id}/disable | Disable Account
[**Disable-BetaAccountForIdentity**](BetaAccountsApi.md#Disable-BetaAccountForIdentity) | **POST** /identities-accounts/{id}/disable | Disable IDN Account for Identity
[**Disable-BetaAccountsForIdentities**](BetaAccountsApi.md#Disable-BetaAccountsForIdentities) | **POST** /identities-accounts/disable | Disable IDN Accounts for Identities
[**Enable-BetaAccount**](BetaAccountsApi.md#Enable-BetaAccount) | **POST** /accounts/{id}/enable | Enable Account
[**Enable-BetaAccountForIdentity**](BetaAccountsApi.md#Enable-BetaAccountForIdentity) | **POST** /identities-accounts/{id}/enable | Enable IDN Account for Identity
[**Enable-BetaAccountsForIdentities**](BetaAccountsApi.md#Enable-BetaAccountsForIdentities) | **POST** /identities-accounts/enable | Enable IDN Accounts for Identities
[**Get-BetaAccount**](BetaAccountsApi.md#Get-BetaAccount) | **GET** /accounts/{id} | Account Details
[**Get-BetaAccountEntitlements**](BetaAccountsApi.md#Get-BetaAccountEntitlements) | **GET** /accounts/{id}/entitlements | Account Entitlements
[**Get-BetaAccounts**](BetaAccountsApi.md#Get-BetaAccounts) | **GET** /accounts | Accounts List
[**Send-BetaAccount**](BetaAccountsApi.md#Send-BetaAccount) | **PUT** /accounts/{id} | Update Account
[**Submit-BetaReloadAccount**](BetaAccountsApi.md#Submit-BetaReloadAccount) | **POST** /accounts/{id}/reload | Reload Account
[**Unlock-BetaAccount**](BetaAccountsApi.md#Unlock-BetaAccount) | **POST** /accounts/{id}/unlock | Unlock Account
[**Update-BetaAccount**](BetaAccountsApi.md#Update-BetaAccount) | **PATCH** /accounts/{id} | Update Account


<a id="New-BetaAccount"></a>
# **New-BetaAccount**
> AccountsAsyncResult New-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountAttributesCreate] <PSCustomObject><br>

Create Account

This API submits an account creation task and returns the task ID.    The `sourceId` where this account will be created must be included in the `attributes` object.  This endpoint creates an account on the source record in your ISC tenant. This is useful for Flat File (`DelimitedFile`) type sources because it allows you to aggregate new accounts without needing to import a new CSV file every time.   However, if you use this endpoint to create an account for a Direct Connection type source, you must ensure that the account also exists on the target source.  The endpoint doesn't actually provision the account on the target source, which means that if the account doesn't also exist on the target source, an aggregation between the source and your tenant will remove it from your tenant.   By providing the account ID of an existing account in the request body, this API will function as a PATCH operation and update the account.  A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$AccountAttributesCreate = Initialize-AccountAttributesCreate -Attributes # AccountAttributesCreate | 

# Create Account
try {
    $Result = New-BetaAccount -AccountAttributesCreate $AccountAttributesCreate
} catch {
    Write-Host ("Exception occurred when calling New-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-BetaAccount"></a>
# **Remove-BetaAccount**
> AccountsAsyncResult Remove-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Account

Use this API to delete an account.  This endpoint submits an account delete task and returns the task ID.  This endpoint only deletes the account from IdentityNow, not the source itself, which can result in the account's returning with the next aggregation between the source and IdentityNow.  To avoid this scenario, it is recommended that you [disable accounts](https://developer.sailpoint.com/idn/api/v3/disable-account) rather than delete them. This will also allow you to reenable the accounts in the future.  A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API. >**NOTE:** You can only delete accounts from sources of the ""DelimitedFile"" type.**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Account ID.

# Delete Account
try {
    $Result = Remove-BetaAccount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Account ID. | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaAccountAsync"></a>
# **Remove-BetaAccountAsync**
> TaskResultDto Remove-BetaAccountAsync<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Remove Account

Use this endpoint to remove accounts from the system without provisioning changes to the source. Accounts that are removed could be re-created during the next aggregation.  This endpoint is good for: * Removing accounts that no longer exist on the source. * Removing accounts that won't be aggregated following updates to the source configuration. * Forcing accounts to be re-created following the next aggregation to re-run account processing, support testing, etc. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "c350d6aa4f104c61b062cb632421ad10" # String | The account id

# Remove Account
try {
    $Result = Remove-BetaAccountAsync -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaAccountAsync: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account id | 

### Return type

[**TaskResultDto**](TaskResultDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Disable-BetaAccount"></a>
# **Disable-BetaAccount**
> AccountsAsyncResult Disable-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountToggleRequest] <PSCustomObject><br>

Disable Account

This API submits a task to disable the account and returns the task ID.   A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or HELPDESK authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id
$AccountToggleRequest = Initialize-AccountToggleRequest -ExternalVerificationId "3f9180835d2e5168015d32f890ca1581" -ForceProvisioning $false # AccountToggleRequest | 

# Disable Account
try {
    $Result = Disable-BetaAccount -Id $Id -AccountToggleRequest $AccountToggleRequest
} catch {
    Write-Host ("Exception occurred when calling Disable-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Disable-BetaAccountForIdentity"></a>
# **Disable-BetaAccountForIdentity**
> SystemCollectionsHashtable Disable-BetaAccountForIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Disable IDN Account for Identity

This API submits a task to disable IDN account for a single identity.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808384203c2d018437e631158309" # String | The identity id.

# Disable IDN Account for Identity
try {
    $Result = Disable-BetaAccountForIdentity -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Disable-BetaAccountForIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Disable-BetaAccountsForIdentities"></a>
# **Disable-BetaAccountsForIdentities**
> BulkIdentitiesAccountsResponse[] Disable-BetaAccountsForIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentitiesAccountsBulkRequest] <PSCustomObject><br>

Disable IDN Accounts for Identities

This API submits tasks to disable IDN account for each identity provided in the request body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentitiesAccountsBulkRequest = Initialize-IdentitiesAccountsBulkRequest -IdentityIds "MyIdentityIds" # IdentitiesAccountsBulkRequest | 

# Disable IDN Accounts for Identities
try {
    $Result = Disable-BetaAccountsForIdentities -IdentitiesAccountsBulkRequest $IdentitiesAccountsBulkRequest
} catch {
    Write-Host ("Exception occurred when calling Disable-BetaAccountsForIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentitiesAccountsBulkRequest** | [**IdentitiesAccountsBulkRequest**](IdentitiesAccountsBulkRequest.md)|  | 

### Return type

[**BulkIdentitiesAccountsResponse[]**](BulkIdentitiesAccountsResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Enable-BetaAccount"></a>
# **Enable-BetaAccount**
> AccountsAsyncResult Enable-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountToggleRequest] <PSCustomObject><br>

Enable Account

This API submits a task to enable account and returns the task ID.   A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or HELPDESK authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id
$AccountToggleRequest = Initialize-AccountToggleRequest -ExternalVerificationId "3f9180835d2e5168015d32f890ca1581" -ForceProvisioning $false # AccountToggleRequest | 

# Enable Account
try {
    $Result = Enable-BetaAccount -Id $Id -AccountToggleRequest $AccountToggleRequest
} catch {
    Write-Host ("Exception occurred when calling Enable-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Enable-BetaAccountForIdentity"></a>
# **Enable-BetaAccountForIdentity**
> SystemCollectionsHashtable Enable-BetaAccountForIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Enable IDN Account for Identity

This API submits a task to enable IDN account for a single identity.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808384203c2d018437e631158309" # String | The identity id.

# Enable IDN Account for Identity
try {
    $Result = Enable-BetaAccountForIdentity -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Enable-BetaAccountForIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Enable-BetaAccountsForIdentities"></a>
# **Enable-BetaAccountsForIdentities**
> BulkIdentitiesAccountsResponse[] Enable-BetaAccountsForIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentitiesAccountsBulkRequest] <PSCustomObject><br>

Enable IDN Accounts for Identities

This API submits tasks to enable IDN account for each identity provided in the request body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentitiesAccountsBulkRequest = Initialize-IdentitiesAccountsBulkRequest -IdentityIds "MyIdentityIds" # IdentitiesAccountsBulkRequest | 

# Enable IDN Accounts for Identities
try {
    $Result = Enable-BetaAccountsForIdentities -IdentitiesAccountsBulkRequest $IdentitiesAccountsBulkRequest
} catch {
    Write-Host ("Exception occurred when calling Enable-BetaAccountsForIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentitiesAccountsBulkRequest** | [**IdentitiesAccountsBulkRequest**](IdentitiesAccountsBulkRequest.md)|  | 

### Return type

[**BulkIdentitiesAccountsResponse[]**](BulkIdentitiesAccountsResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaAccount"></a>
# **Get-BetaAccount**
> Account Get-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Account Details

Use this API to return the details for a single account by its ID.   A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or HELPDESK authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Account ID.

# Account Details
try {
    $Result = Get-BetaAccount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Account ID. | 

### Return type

[**Account**](Account.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaAccountEntitlements"></a>
# **Get-BetaAccountEntitlements**
> Entitlement[] Get-BetaAccountEntitlements<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Account Entitlements

This API returns entitlements of the account.   A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or HELPDESK authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Account Entitlements
try {
    $Result = Get-BetaAccountEntitlements -Id $Id -Offset $Offset -Limit $Limit -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccountEntitlements: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account id | 
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**Entitlement[]**](Entitlement.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaAccounts"></a>
# **Get-BetaAccounts**
> Account[] Get-BetaAccounts<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DetailLevel] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Accounts List

This returns a list of accounts.   A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or HELPDESK authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$DetailLevel = "SLIM" # String | Determines whether Slim, or increased level of detail is provided for each account in the returned list. FULL is the default behavior. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "identityId eq "2c9180858082150f0180893dbaf44201"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, sw*  **identityId**: *eq, in, sw*  **name**: *eq, in, sw*  **nativeIdentity**: *eq, in, sw*  **sourceId**: *eq, in, sw*  **uncorrelated**: *eq*  **entitlements**: *eq*  **origin**: *eq, in*  **manuallyCorrelated**: *eq*  **identity.name**: *eq, in, sw*  **identity.correlated**: *eq*  **identity.identityState**: *eq, in*  **source.displayableName**: *eq, in*  **source.authoritative**: *eq*  **source.connectionType**: *eq, in* (optional)
$Sorters = "id,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, created, modified, sourceId, identityId, identity.id, nativeIdentity, uuid, manuallyCorrelated, entitlements, origin, identity.name, identity.identityState, identity.correlated, source.displayableName, source.authoritative, source.connectionType** (optional)

# Accounts List
try {
    $Result = Get-BetaAccounts -DetailLevel $DetailLevel -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DetailLevel** | **String**| Determines whether Slim, or increased level of detail is provided for each account in the returned list. FULL is the default behavior. | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, sw*  **identityId**: *eq, in, sw*  **name**: *eq, in, sw*  **nativeIdentity**: *eq, in, sw*  **sourceId**: *eq, in, sw*  **uncorrelated**: *eq*  **entitlements**: *eq*  **origin**: *eq, in*  **manuallyCorrelated**: *eq*  **identity.name**: *eq, in, sw*  **identity.correlated**: *eq*  **identity.identityState**: *eq, in*  **source.displayableName**: *eq, in*  **source.authoritative**: *eq*  **source.connectionType**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, created, modified, sourceId, identityId, identity.id, nativeIdentity, uuid, manuallyCorrelated, entitlements, origin, identity.name, identity.identityState, identity.correlated, source.displayableName, source.authoritative, source.connectionType** | [optional] 

### Return type

[**Account[]**](Account.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaAccount"></a>
# **Send-BetaAccount**
> AccountsAsyncResult Send-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountAttributes] <PSCustomObject><br>

Update Account

Use this API to update an account with a PUT request.   This endpoint submits an account update task and returns the task ID.    A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.  >**Note: You can only use this PUT endpoint to update accounts from flat file sources.** 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Account ID.
$AccountAttributes = Initialize-AccountAttributes -Attributes # AccountAttributes | 

# Update Account
try {
    $Result = Send-BetaAccount -Id $Id -AccountAttributes $AccountAttributes
} catch {
    Write-Host ("Exception occurred when calling Send-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Account ID. | 
 **AccountAttributes** | [**AccountAttributes**](AccountAttributes.md)|  | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Submit-BetaReloadAccount"></a>
# **Submit-BetaReloadAccount**
> AccountsAsyncResult Submit-BetaReloadAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Reload Account

This API asynchronously reloads the account directly from the connector and performs a one-time aggregation process.   A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or HELPDESK authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account id

# Reload Account
try {
    $Result = Submit-BetaReloadAccount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Submit-BetaReloadAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Unlock-BetaAccount"></a>
# **Unlock-BetaAccount**
> AccountsAsyncResult Unlock-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccountUnlockRequest] <PSCustomObject><br>

Unlock Account

This API submits a task to unlock an account and returns the task ID.   To use this endpoint to unlock an account that has the `forceProvisioning` option set to true, the `idn:accounts-provisioning:manage` scope is required.  A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN, or HELPDESK authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The account ID.
$AccountUnlockRequest = Initialize-AccountUnlockRequest -ExternalVerificationId "3f9180835d2e5168015d32f890ca1581" -UnlockIDNAccount $false -ForceProvisioning $false # AccountUnlockRequest | 

# Unlock Account
try {
    $Result = Unlock-BetaAccount -Id $Id -AccountUnlockRequest $AccountUnlockRequest
} catch {
    Write-Host ("Exception occurred when calling Unlock-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account ID. | 
 **AccountUnlockRequest** | [**AccountUnlockRequest**](AccountUnlockRequest.md)|  | 

### Return type

[**AccountsAsyncResult**](AccountsAsyncResult.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaAccount"></a>
# **Update-BetaAccount**
> SystemCollectionsHashtable Update-BetaAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <PSCustomObject[]><br>

Update Account

Use this API to update account details.  A token with ORG_ADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.  This API supports updating an account's correlation by modifying the `identityId` and `manuallyCorrelated` fields.  To reassign an account from one identity to another, replace the current `identityId` with a new value.  If the account you're assigning was provisioned by Identity Security Cloud (ISC), it's possible for ISC to create a new account  for the previous identity as soon as the account is moved. If the account you're assigning is authoritative,  this causes the previous identity to become uncorrelated and can even result in its deletion. All accounts that are reassigned will be set to `manuallyCorrelated: true` unless you specify otherwise.  >**Note:** The `attributes` field can only be modified for flat file accounts.  

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Account ID.
$RequestBody =  # SystemCollectionsHashtable[] | A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Update Account
try {
    $Result = Update-BetaAccount -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-BetaAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Account ID. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of account update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

