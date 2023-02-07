# PSSailpoint.PSSailpoint/Api.SavedSearchApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Save-dSearchCreate**](SavedSearchApi.md#Save-dSearchCreate) | **POST** /saved-searches | Create a saved search
[**Save-dSearchDelete**](SavedSearchApi.md#Save-dSearchDelete) | **DELETE** /saved-searches/{id} | Delete a document by ID
[**Save-dSearchExecute**](SavedSearchApi.md#Save-dSearchExecute) | **POST** /saved-searches/{id}/execute | Execute a saved search by ID
[**Save-dSearchGet**](SavedSearchApi.md#Save-dSearchGet) | **GET** /saved-searches/{id} | Return a saved search by ID
[**Save-dSearchList**](SavedSearchApi.md#Save-dSearchList) | **GET** /saved-searches | Return a list of Saved Searches
[**Save-dSearchUpdate**](SavedSearchApi.md#Save-dSearchUpdate) | **PUT** /saved-searches/{id} | Updates an existing saved search 


<a name="Save-dSearchCreate"></a>
# **Save-dSearchCreate**
> SavedSearch Save-dSearchCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SavedSearchCreateRequest] <PSCustomObject><br>

Create a saved search

Creates a new saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$SavedSearchDetailFilters = Initialize-SavedSearchDetailFilters -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$SavedSearchCreateRequest = Initialize-SavedSearchCreateRequest -Name "Disabled accounts" -Description "Disabled accounts" -Public $false -Created (Get-Date) -Modified (Get-Date) -Indices "accessprofiles" -Columns @{ key_example = $Column = Initialize-Column -Field "email" -Header "Work Email" } -Query "@accounts(disabled:true)" -Fields "MyFields" -Sort "MySort" -Filters $SavedSearchDetailFilters # SavedSearchCreateRequest | The saved search to persist.

# Create a saved search
try {
    $Result = Save-dSearchCreate -SavedSearchCreateRequest $SavedSearchCreateRequest
} catch {
    Write-Host ("Exception occurred when calling Save-dSearchCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SavedSearchCreateRequest** | [**SavedSearchCreateRequest**](SavedSearchCreateRequest.md)| The saved search to persist. | 

### Return type

[**SavedSearch**](SavedSearch.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Save-dSearchDelete"></a>
# **Save-dSearchDelete**
> void Save-dSearchDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a document by ID

Deletes the specified saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Delete a document by ID
try {
    $Result = Save-dSearchDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Save-dSearchDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Save-dSearchExecute"></a>
# **Save-dSearchExecute**
> void Save-dSearchExecute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchArguments] <PSCustomObject><br>

Execute a saved search by ID

Executes the specified saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$SearchArgumentsOwner = Initialize-SearchArgumentsOwner -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313"
$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313"
$SearchArguments = Initialize-SearchArguments -ScheduleId "7a724640-0c17-4ce9-a8c3-4a89738459c8" -Owner $SearchArgumentsOwner -Recipients $TypedReference # SearchArguments | When saved search execution is triggered by a scheduled search, *scheduleId* will specify the ID of the triggering scheduled search.  If *scheduleId* is not specified (when execution is triggered by a UI test), the *owner* and *recipients* arguments must be provided. 

# Execute a saved search by ID
try {
    $Result = Save-dSearchExecute -Id $Id -SearchArguments $SearchArguments
} catch {
    Write-Host ("Exception occurred when calling Save-dSearchExecute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Save-dSearchGet"></a>
# **Save-dSearchGet**
> SavedSearch Save-dSearchGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Return a saved search by ID

Returns the specified saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Return a saved search by ID
try {
    $Result = Save-dSearchGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Save-dSearchGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Save-dSearchList"></a>
# **Save-dSearchList**
> SavedSearch[] Save-dSearchList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Return a list of Saved Searches

Returns a list of saved searches. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "public eq true" # String | An expression used to constrain the result set using the filtering syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results).  Allowed filter properties: *owner.id*, *public*  Allowed filter operator: *eq*  **Example filters**:  ```owner.id eq ""0de46054-fe90-434a-b84e-c6b3359d0c64""``` -- returns saved searches for the specified owner ID  ```public eq true``` -- returns all public saved searches  ```owner.id eq me or public eq true``` -- returns all of the current user's saved searches as well as all public saved searches belonging to other users in the current org  (optional)

# Return a list of Saved Searches
try {
    $Result = Save-dSearchList -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Save-dSearchList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| An expression used to constrain the result set using the filtering syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results).  Allowed filter properties: *owner.id*, *public*  Allowed filter operator: *eq*  **Example filters**:  &#x60;&#x60;&#x60;owner.id eq &quot;&quot;0de46054-fe90-434a-b84e-c6b3359d0c64&quot;&quot;&#x60;&#x60;&#x60; -- returns saved searches for the specified owner ID  &#x60;&#x60;&#x60;public eq true&#x60;&#x60;&#x60; -- returns all public saved searches  &#x60;&#x60;&#x60;owner.id eq me or public eq true&#x60;&#x60;&#x60; -- returns all of the current user&#39;s saved searches as well as all public saved searches belonging to other users in the current org  | [optional] 

### Return type

[**SavedSearch[]**](SavedSearch.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Save-dSearchUpdate"></a>
# **Save-dSearchUpdate**
> SavedSearch Save-dSearchUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SavedSearch] <PSCustomObject><br>

Updates an existing saved search 

Updates an existing saved search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313"

$Bound = Initialize-Bound -Value "1" -Inclusive $false
$Range = Initialize-Range -Lower $Bound -Upper $Bound

$SavedSearchDetailFilters = Initialize-SavedSearchDetailFilters -Type "EXISTS" -Range $Range -Terms "account_count" -Exclude $false

$SavedSearch = Initialize-SavedSearch -Id "0de46054-fe90-434a-b84e-c6b3359d0c64" -Owner $TypedReference -Name "Disabled accounts" -Description "Disabled accounts" -Public $false -Created (Get-Date) -Modified (Get-Date) -Indices "accessprofiles" -Columns @{ key_example = $Column = Initialize-Column -Field "email" -Header "Work Email" } -Query "@accounts(disabled:true)" -Fields "MyFields" -Sort "MySort" -Filters $SavedSearchDetailFilters # SavedSearch | The saved search to persist.

# Updates an existing saved search 
try {
    $Result = Save-dSearchUpdate -Id $Id -SavedSearch $SavedSearch
} catch {
    Write-Host ("Exception occurred when calling Save-dSearchUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

