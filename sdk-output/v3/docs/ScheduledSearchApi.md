# PSSailpoint.PSSailpoint/Api.ScheduledSearchApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-ScheduledSearchCreate**](ScheduledSearchApi.md#Invoke-ScheduledSearchCreate) | **POST** /scheduled-searches | Create a new scheduled search
[**Invoke-ScheduledSearchDelete**](ScheduledSearchApi.md#Invoke-ScheduledSearchDelete) | **DELETE** /scheduled-searches/{id} | Delete a Scheduled Search by ID
[**Invoke-ScheduledSearchGet**](ScheduledSearchApi.md#Invoke-ScheduledSearchGet) | **GET** /scheduled-searches/{id} | Return a Scheduled Search by ID
[**Invoke-ScheduledSearchList**](ScheduledSearchApi.md#Invoke-ScheduledSearchList) | **GET** /scheduled-searches | Return a list of scheduled searches
[**Invoke-ScheduledSearchUnsubscribe**](ScheduledSearchApi.md#Invoke-ScheduledSearchUnsubscribe) | **POST** /scheduled-searches/{id}/unsubscribe | Unsubscribe a recipient from Scheduled Search
[**Invoke-ScheduledSearchUpdate**](ScheduledSearchApi.md#Invoke-ScheduledSearchUpdate) | **PUT** /scheduled-searches/{id} | Update an existing Scheduled Search


<a name="Invoke-ScheduledSearchCreate"></a>
# **Invoke-ScheduledSearchCreate**
> ScheduledSearch Invoke-ScheduledSearchCreate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduledSearchCreateRequest] <PSCustomObject><br>

Create a new scheduled search

Creates a new scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Selector = Initialize-Selector -Type "LIST" -Values "MyValues" -Interval 3
$Schedule1 = Initialize-Schedule1 -Type "DAILY" -Months $Selector -Days $Selector -Hours $Selector -Expiration (Get-Date) -TimeZoneId "GMT-06:00"

$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313"
$ScheduledSearchCreateRequest = Initialize-ScheduledSearchCreateRequest -Name "Daily disabled accounts" -Description "Daily disabled accounts" -SavedSearchId "554f1511-f0a1-4744-ab14-599514d3e57c" -Created (Get-Date) -Modified (Get-Date) -Schedule $Schedule1 -Recipients $TypedReference -Enabled $false -EmailEmptyResults $false -DisplayQueryDetails $false # ScheduledSearchCreateRequest | The scheduled search to persist.

# Create a new scheduled search
try {
    $Result = Invoke-ScheduledSearchCreate -ScheduledSearchCreateRequest $ScheduledSearchCreateRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-ScheduledSearchCreate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScheduledSearchCreateRequest** | [**ScheduledSearchCreateRequest**](ScheduledSearchCreateRequest.md)| The scheduled search to persist. | 

### Return type

[**ScheduledSearch**](ScheduledSearch.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ScheduledSearchDelete"></a>
# **Invoke-ScheduledSearchDelete**
> void Invoke-ScheduledSearchDelete<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Scheduled Search by ID

Deletes the specified scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Delete a Scheduled Search by ID
try {
    $Result = Invoke-ScheduledSearchDelete -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-ScheduledSearchDelete: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Invoke-ScheduledSearchGet"></a>
# **Invoke-ScheduledSearchGet**
> ScheduledSearch Invoke-ScheduledSearchGet<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Return a Scheduled Search by ID

Returns the specified scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Return a Scheduled Search by ID
try {
    $Result = Invoke-ScheduledSearchGet -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-ScheduledSearchGet: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the requested document. | 

### Return type

[**ScheduledSearch**](ScheduledSearch.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ScheduledSearchList"></a>
# **Invoke-ScheduledSearchList**
> ScheduledSearch[] Invoke-ScheduledSearchList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Return a list of scheduled searches

Returns a list of scheduled searches. 

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
$Filters = "savedSearchId eq "6cc0945d-9eeb-4948-9033-72d066e1153e"" # String | An expression used to constrain the result set using the filtering syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results).  Allowed filter properties: *owner.id*, *savedSearchId*  Allowed filter operator: *eq*  **Example filters**:  ```owner.id eq ""0de46054-fe90-434a-b84e-c6b3359d0c64""``` -- returns scheduled searches for the specified owner ID  ```savedSearchId eq ""6cc0945d-9eeb-4948-9033-72d066e1153e""``` -- returns scheduled searches that reference the specified saved search  ```owner.id eq me or savedSearchId eq ""6cc0945d-9eeb-4948-9033-72d066e1153e""``` -- returns all of the current user's scheduled searches as well as all scheduled searches that reference the specified saved search  (optional)

# Return a list of scheduled searches
try {
    $Result = Invoke-ScheduledSearchList -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-ScheduledSearchList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| An expression used to constrain the result set using the filtering syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results).  Allowed filter properties: *owner.id*, *savedSearchId*  Allowed filter operator: *eq*  **Example filters**:  &#x60;&#x60;&#x60;owner.id eq &quot;&quot;0de46054-fe90-434a-b84e-c6b3359d0c64&quot;&quot;&#x60;&#x60;&#x60; -- returns scheduled searches for the specified owner ID  &#x60;&#x60;&#x60;savedSearchId eq &quot;&quot;6cc0945d-9eeb-4948-9033-72d066e1153e&quot;&quot;&#x60;&#x60;&#x60; -- returns scheduled searches that reference the specified saved search  &#x60;&#x60;&#x60;owner.id eq me or savedSearchId eq &quot;&quot;6cc0945d-9eeb-4948-9033-72d066e1153e&quot;&quot;&#x60;&#x60;&#x60; -- returns all of the current user&#39;s scheduled searches as well as all scheduled searches that reference the specified saved search  | [optional] 

### Return type

[**ScheduledSearch[]**](ScheduledSearch.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ScheduledSearchUnsubscribe"></a>
# **Invoke-ScheduledSearchUnsubscribe**
> void Invoke-ScheduledSearchUnsubscribe<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypedReference] <PSCustomObject><br>

Unsubscribe a recipient from Scheduled Search

Unsubscribes a recipient from the specified scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" # TypedReference | The recipient to be removed from the scheduled search. 

# Unsubscribe a recipient from Scheduled Search
try {
    $Result = Invoke-ScheduledSearchUnsubscribe -Id $Id -TypedReference $TypedReference
} catch {
    Write-Host ("Exception occurred when calling Invoke-ScheduledSearchUnsubscribe: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the requested document. | 
 **TypedReference** | [**TypedReference**](TypedReference.md)| The recipient to be removed from the scheduled search.  | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-ScheduledSearchUpdate"></a>
# **Invoke-ScheduledSearchUpdate**
> ScheduledSearch Invoke-ScheduledSearchUpdate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduledSearch] <PSCustomObject><br>

Update an existing Scheduled Search

Updates an existing scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$Selector = Initialize-Selector -Type "LIST" -Values "MyValues" -Interval 3
$Schedule1 = Initialize-Schedule1 -Type "DAILY" -Months $Selector -Days $Selector -Hours $Selector -Expiration (Get-Date) -TimeZoneId "GMT-06:00"

$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313"
$ScheduledSearch = Initialize-ScheduledSearch -Name "Daily disabled accounts" -Description "Daily disabled accounts" -SavedSearchId "554f1511-f0a1-4744-ab14-599514d3e57c" -Created (Get-Date) -Modified (Get-Date) -Schedule $Schedule1 -Recipients $TypedReference -Enabled $false -EmailEmptyResults $false -DisplayQueryDetails $false -Id "0de46054-fe90-434a-b84e-c6b3359d0c64" -Owner $TypedReference -OwnerId "2c9180867624cbd7017642d8c8c81f67" # ScheduledSearch | The scheduled search to persist.

# Update an existing Scheduled Search
try {
    $Result = Invoke-ScheduledSearchUpdate -Id $Id -ScheduledSearch $ScheduledSearch
} catch {
    Write-Host ("Exception occurred when calling Invoke-ScheduledSearchUpdate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the requested document. | 
 **ScheduledSearch** | [**ScheduledSearch**](ScheduledSearch.md)| The scheduled search to persist. | 

### Return type

[**ScheduledSearch**](ScheduledSearch.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

