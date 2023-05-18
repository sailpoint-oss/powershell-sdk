# PSSailpoint.PSSailpoint/Api.SODExceptionApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BulkSodExceptions**](SODExceptionApi.md#New-BulkSodExceptions) | **POST** /sod-exceptions/bulk-create | Create SOD exceptions in bulk
[**New-SodException**](SODExceptionApi.md#New-SodException) | **POST** /sod-exceptions | Create SOD exception
[**Remove-SodExceptionById**](SODExceptionApi.md#Remove-SodExceptionById) | **DELETE** /sod-exceptions/{id} | Delete SOD exception by ID
[**Get-SodExceptionById**](SODExceptionApi.md#Get-SodExceptionById) | **GET** /sod-exceptions/{id} | Get SOD exception by ID
[**Get-SodExceptions**](SODExceptionApi.md#Get-SodExceptions) | **GET** /sod-exceptions | List SOD exceptions
[**Update-ExceptionById**](SODExceptionApi.md#Update-ExceptionById) | **PATCH** /sod-exceptions/{id} | Update SOD exception


<a name="New-BulkSodExceptions"></a>
# **New-BulkSodExceptions**
> SystemCollectionsHashtable New-BulkSodExceptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ExceptionList] <PSCustomObject><br>

Create SOD exceptions in bulk

This API creates SOD exceptions in bulk.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"

$ExceptionCriteriaCriteriaListInner = Initialize-ExceptionCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "CN=HelpDesk,OU=test,OU=test-service,DC=TestAD,DC=local" -Existing $true
$ExceptionCriteria = Initialize-ExceptionCriteria -CriteriaList $ExceptionCriteriaCriteriaListInner

$ExceptionAccessCriteria = Initialize-ExceptionAccessCriteria -LeftCriteria $ExceptionCriteria -RightCriteria $ExceptionCriteria

$Exception = Initialize-Exception -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Created (Get-Date) -Modified (Get-Date) -SodPolicy $BaseReferenceDto -Identity $BaseReferenceDto -Start (Get-Date) -VarEnd (Get-Date) -BusinessJustification "Bob (the accountant) is on vacation, Bill needs access to accounting data this week." -MitigatingControl "The manager will audit Bill's changes this week." -AccessCriteria $ExceptionAccessCriteria -Origin $BaseReferenceDto

$ExceptionList = Initialize-ExceptionList -Exceptions $Exception # ExceptionList | 

# Create SOD exceptions in bulk
try {
    $Result = New-BulkSodExceptions -ExceptionList $ExceptionList
} catch {
    Write-Host ("Exception occurred when calling New-BulkSodExceptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ExceptionList** | [**ExceptionList**](ExceptionList.md)|  | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-SodException"></a>
# **New-SodException**
> Exception New-SodException<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Exception] <PSCustomObject><br>

Create SOD exception

This API creates a SOD exception.  A token with API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"

$ExceptionCriteriaCriteriaListInner = Initialize-ExceptionCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "CN=HelpDesk,OU=test,OU=test-service,DC=TestAD,DC=local" -Existing $true
$ExceptionCriteria = Initialize-ExceptionCriteria -CriteriaList $ExceptionCriteriaCriteriaListInner

$ExceptionAccessCriteria = Initialize-ExceptionAccessCriteria -LeftCriteria $ExceptionCriteria -RightCriteria $ExceptionCriteria

$Exception = Initialize-Exception -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Created (Get-Date) -Modified (Get-Date) -SodPolicy $BaseReferenceDto -Identity $BaseReferenceDto -Start (Get-Date) -VarEnd (Get-Date) -BusinessJustification "Bob (the accountant) is on vacation, Bill needs access to accounting data this week." -MitigatingControl "The manager will audit Bill's changes this week." -AccessCriteria $ExceptionAccessCriteria -Origin $BaseReferenceDto # Exception | 

# Create SOD exception
try {
    $Result = New-SodException -Exception $Exception
} catch {
    Write-Host ("Exception occurred when calling New-SodException: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Exception** | [**Exception**](Exception.md)|  | 

### Return type

[**Exception**](Exception.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-SodExceptionById"></a>
# **Remove-SodExceptionById**
> void Remove-SodExceptionById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete SOD exception by ID

This API deletes the specified SOD exception.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD exception to delete.

# Delete SOD exception by ID
try {
    $Result = Remove-SodExceptionById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-SodExceptionById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD exception to delete. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SodExceptionById"></a>
# **Get-SodExceptionById**
> Exception Get-SodExceptionById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get SOD exception by ID

This API returns the specified SOD exception.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to retrieve.

# Get SOD exception by ID
try {
    $Result = Get-SodExceptionById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-SodExceptionById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the object reference to retrieve. | 

### Return type

[**Exception**](Exception.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SodExceptions"></a>
# **Get-SodExceptions**
> Exception[] Get-SodExceptions<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List SOD exceptions

This API returns a list of all SOD exceptions.  A token with API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "identity.id eq "bc693f07e7b645539626c25954c58554"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq,   in*  **sodPolicy.id**: *eq,   in*  **identity.id**: *eq,   in* (optional)
$Sorters = "identity.id,-start" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields:  **sodPolicy.id,   identity.id,   start,   end** (optional)

# List SOD exceptions
try {
    $Result = Get-SodExceptions -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-SodExceptions: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq,   in*  **sodPolicy.id**: *eq,   in*  **identity.id**: *eq,   in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields:  **sodPolicy.id,   identity.id,   start,   end** | [optional] 

### Return type

[**Exception[]**](Exception.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-ExceptionById"></a>
# **Update-ExceptionById**
> Exception Update-ExceptionById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <PSCustomObject[]><br>

Update SOD exception

This API allows updating SOD exception fields other than [""id"", ""created"", ""origin""] using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the SOD exception to update.
$RequestBody =  # SystemCollectionsHashtable[] | A list of SOD policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * policyId * identityId * start * end * businessJustification * mitigatingControl 

# Update SOD exception
try {
    $Result = Update-ExceptionById -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-ExceptionById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the SOD exception to update. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of SOD policy update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * policyId * identityId * start * end * businessJustification * mitigatingControl  | 

### Return type

[**Exception**](Exception.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

