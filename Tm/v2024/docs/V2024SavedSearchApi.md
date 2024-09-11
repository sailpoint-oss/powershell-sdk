# Tm.V2024.Tm.V2024\Api.V2024SavedSearchApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024SavedSearch**](V2024SavedSearchApi.md#New-V2024SavedSearch) | **POST** /saved-searches | Create a saved search
[**Remove-V2024SavedSearch**](V2024SavedSearchApi.md#Remove-V2024SavedSearch) | **DELETE** /saved-searches/{id} | Delete document by ID
[**Invoke-V2024ExecuteSavedSearch**](V2024SavedSearchApi.md#Invoke-V2024ExecuteSavedSearch) | **POST** /saved-searches/{id}/execute | Execute a saved search by ID
[**Get-V2024SavedSearch**](V2024SavedSearchApi.md#Get-V2024SavedSearch) | **GET** /saved-searches/{id} | Return saved search by ID
[**Get-V2024SavedSearches**](V2024SavedSearchApi.md#Get-V2024SavedSearches) | **GET** /saved-searches | A list of Saved Searches
[**Send-V2024SavedSearch**](V2024SavedSearchApi.md#Send-V2024SavedSearch) | **PUT** /saved-searches/{id} | Updates an existing saved search 


<a id="New-V2024SavedSearch"></a>
# **New-V2024SavedSearch**
> SavedSearch New-V2024SavedSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateSavedSearchRequest] <PSCustomObject><br>

Create a saved search

Creates a new saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$SavedSearchDetailFilters = Initialize-SavedSearchDetailFilters -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$CreateSavedSearchRequest = Initialize-CreateSavedSearchRequest -Name "Disabled accounts" -Description "Disabled accounts" -Created (Get-Date) -Modified (Get-Date) -Indices "accessprofiles" -Columns @{ key_example = $Column = Initialize-Column -Field "email" -Header "Work Email" } -Query "@accounts(disabled:true)" -Fields "MyFields" -OrderBy @{ key_example = "MyInner" } -Sort "MySort" -Filters $SavedSearchDetailFilters # CreateSavedSearchRequest | The saved search to persist.

# Create a saved search
try {
    $Result = New-V2024SavedSearch -CreateSavedSearchRequest $CreateSavedSearchRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024SavedSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateSavedSearchRequest** | [**CreateSavedSearchRequest**](CreateSavedSearchRequest.md)| The saved search to persist. | 

### Return type

[**SavedSearch**](SavedSearch.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024SavedSearch"></a>
# **Remove-V2024SavedSearch**
> void Remove-V2024SavedSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete document by ID

Deletes the specified saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Delete document by ID
try {
    $Result = Remove-V2024SavedSearch -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024SavedSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the requested document. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2024ExecuteSavedSearch"></a>
# **Invoke-V2024ExecuteSavedSearch**
> void Invoke-V2024ExecuteSavedSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchArguments] <PSCustomObject><br>

Execute a saved search by ID

Executes the specified saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313"
$SearchArguments = Initialize-SearchArguments -ScheduleId "7a724640-0c17-4ce9-a8c3-4a89738459c8" -Owner $TypedReference -Recipients $TypedReference # SearchArguments | When saved search execution is triggered by a scheduled search, *scheduleId* will specify the ID of the triggering scheduled search.  If *scheduleId* is not specified (when execution is triggered by a UI test), the *owner* and *recipients* arguments must be provided. 

# Execute a saved search by ID
try {
    $Result = Invoke-V2024ExecuteSavedSearch -Id $Id -SearchArguments $SearchArguments
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2024ExecuteSavedSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the requested document. | 
 **SearchArguments** | [**SearchArguments**](SearchArguments.md)| When saved search execution is triggered by a scheduled search, *scheduleId* will specify the ID of the triggering scheduled search.  If *scheduleId* is not specified (when execution is triggered by a UI test), the *owner* and *recipients* arguments must be provided.  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SavedSearch"></a>
# **Get-V2024SavedSearch**
> SavedSearch Get-V2024SavedSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Return saved search by ID

Returns the specified saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Return saved search by ID
try {
    $Result = Get-V2024SavedSearch -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SavedSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the requested document. | 

### Return type

[**SavedSearch**](SavedSearch.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024SavedSearches"></a>
# **Get-V2024SavedSearches**
> SavedSearch[] Get-V2024SavedSearches<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

A list of Saved Searches

Returns a list of saved searches. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "owner.id eq "7a724640-0c17-4ce9-a8c3-4a89738459c8"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **owner.id**: *eq* (optional)

# A list of Saved Searches
try {
    $Result = Get-V2024SavedSearches -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024SavedSearches: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **owner.id**: *eq* | [optional] 

### Return type

[**SavedSearch[]**](SavedSearch.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024SavedSearch"></a>
# **Send-V2024SavedSearch**
> SavedSearch Send-V2024SavedSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SavedSearch] <PSCustomObject><br>

Updates an existing saved search 

Updates an existing saved search.   >**NOTE: You cannot update the `owner` of the saved search.** 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$SavedSearchDetailFilters = Initialize-SavedSearchDetailFilters -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313"
$SavedSearch = Initialize-SavedSearch -Name "Disabled accounts" -Description "Disabled accounts" -Created (Get-Date) -Modified (Get-Date) -Indices "accessprofiles" -Columns @{ key_example = $Column = Initialize-Column -Field "email" -Header "Work Email" } -Query "@accounts(disabled:true)" -Fields "MyFields" -OrderBy @{ key_example = "MyInner" } -Sort "MySort" -Filters $SavedSearchDetailFilters -Id "0de46054-fe90-434a-b84e-c6b3359d0c64" -Owner $TypedReference -OwnerId "2c91808568c529c60168cca6f90c1313" -Public $false # SavedSearch | The saved search to persist.

# Updates an existing saved search 
try {
    $Result = Send-V2024SavedSearch -Id $Id -SavedSearch $SavedSearch
} catch {
    Write-Host ("Exception occurred when calling Send-V2024SavedSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the requested document. | 
 **SavedSearch** | [**SavedSearch**](SavedSearch.md)| The saved search to persist. | 

### Return type

[**SavedSearch**](SavedSearch.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

