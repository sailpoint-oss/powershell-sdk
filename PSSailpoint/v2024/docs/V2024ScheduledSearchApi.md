# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024ScheduledSearchApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ScheduledSearch**](V2024ScheduledSearchApi.md#New-V2024ScheduledSearch) | **POST** /scheduled-searches | Create a new scheduled search
[**Remove-V2024ScheduledSearch**](V2024ScheduledSearchApi.md#Remove-V2024ScheduledSearch) | **DELETE** /scheduled-searches/{id} | Delete a Scheduled Search
[**Get-V2024ScheduledSearch**](V2024ScheduledSearchApi.md#Get-V2024ScheduledSearch) | **GET** /scheduled-searches/{id} | Get a Scheduled Search
[**Get-V2024ScheduledSearch**](V2024ScheduledSearchApi.md#Get-V2024ScheduledSearch) | **GET** /scheduled-searches | List scheduled searches
[**Invoke-V2024UnsubscribeScheduledSearch**](V2024ScheduledSearchApi.md#Invoke-V2024UnsubscribeScheduledSearch) | **POST** /scheduled-searches/{id}/unsubscribe | Unsubscribe a recipient from Scheduled Search
[**Update-V2024ScheduledSearch**](V2024ScheduledSearchApi.md#Update-V2024ScheduledSearch) | **PUT** /scheduled-searches/{id} | Update an existing Scheduled Search


<a id="New-V2024ScheduledSearch"></a>
# **New-V2024ScheduledSearch**
> ScheduledSearch New-V2024ScheduledSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateScheduledSearchRequest] <PSCustomObject><br>

Create a new scheduled search

Creates a new scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$MatchTerm = Initialize-MatchTerm -Name "mail" -Value "1234 Albany Dr" -Op "eq" -Container $true -And $false -Children @{ key_example =  }
$SelectorAccountMatchConfigMatchExpression = Initialize-SelectorAccountMatchConfigMatchExpression -MatchTerms $MatchTerm -And $true

$SelectorAccountMatchConfig = Initialize-SelectorAccountMatchConfig -MatchExpression $SelectorAccountMatchConfigMatchExpression

$Schedule2Months = Initialize-Schedule2Months -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2Days = Initialize-Schedule2Days -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2Hours = Initialize-Schedule2Hours -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2 = Initialize-Schedule2 -Type "DAILY" -Months $Schedule2Months -Days $Schedule2Days -Hours $Schedule2Hours -Expiration (Get-Date) -TimeZoneId "America/Chicago"

$SearchScheduleRecipientsInner = Initialize-SearchScheduleRecipientsInner -Type "IDENTITY" -Id "2c9180867624cbd7017642d8c8c81f67"
$CreateScheduledSearchRequest = Initialize-CreateScheduledSearchRequest -Name "Daily disabled accounts" -Description "Daily disabled accounts" -SavedSearchId "554f1511-f0a1-4744-ab14-599514d3e57c" -Created (Get-Date) -Modified (Get-Date) -Schedule $Schedule2 -Recipients $SearchScheduleRecipientsInner -Enabled $false -EmailEmptyResults $false -DisplayQueryDetails $false # CreateScheduledSearchRequest | The scheduled search to persist.

# Create a new scheduled search
try {
    $Result = New-V2024ScheduledSearch -CreateScheduledSearchRequest $CreateScheduledSearchRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024ScheduledSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateScheduledSearchRequest** | [**CreateScheduledSearchRequest**](CreateScheduledSearchRequest.md)| The scheduled search to persist. | 

### Return type

[**ScheduledSearch**](ScheduledSearch.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ScheduledSearch"></a>
# **Remove-V2024ScheduledSearch**
> void Remove-V2024ScheduledSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Scheduled Search

Deletes the specified scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Delete a Scheduled Search
try {
    $Result = Remove-V2024ScheduledSearch -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024ScheduledSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ScheduledSearch"></a>
# **Get-V2024ScheduledSearch**
> ScheduledSearch Get-V2024ScheduledSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Scheduled Search

Returns the specified scheduled search.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.

# Get a Scheduled Search
try {
    $Result = Get-V2024ScheduledSearch -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ScheduledSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ScheduledSearch"></a>
# **Get-V2024ScheduledSearch**
> ScheduledSearch[] Get-V2024ScheduledSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List scheduled searches

Returns a list of scheduled searches. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "savedSearchId eq "6cc0945d-9eeb-4948-9033-72d066e1153e"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **owner.id**: *eq*  **savedSearchId**: *eq* (optional)

# List scheduled searches
try {
    $Result = Get-V2024ScheduledSearch -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ScheduledSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **owner.id**: *eq*  **savedSearchId**: *eq* | [optional] 

### Return type

[**ScheduledSearch[]**](ScheduledSearch.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2024UnsubscribeScheduledSearch"></a>
# **Invoke-V2024UnsubscribeScheduledSearch**
> void Invoke-V2024UnsubscribeScheduledSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TypedReference] <PSCustomObject><br>

Unsubscribe a recipient from Scheduled Search

Unsubscribes a recipient from the specified scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$TypedReference = Initialize-TypedReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" # TypedReference | The recipient to be removed from the scheduled search. 

# Unsubscribe a recipient from Scheduled Search
try {
    $Result = Invoke-V2024UnsubscribeScheduledSearch -Id $Id -TypedReference $TypedReference
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2024UnsubscribeScheduledSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ScheduledSearch"></a>
# **Update-V2024ScheduledSearch**
> ScheduledSearch Update-V2024ScheduledSearch<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScheduledSearch] <PSCustomObject><br>

Update an existing Scheduled Search

Updates an existing scheduled search. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808568c529c60168cca6f90c1313" # String | ID of the requested document.
$MatchTerm = Initialize-MatchTerm -Name "mail" -Value "1234 Albany Dr" -Op "eq" -Container $true -And $false -Children @{ key_example =  }
$SelectorAccountMatchConfigMatchExpression = Initialize-SelectorAccountMatchConfigMatchExpression -MatchTerms $MatchTerm -And $true

$SelectorAccountMatchConfig = Initialize-SelectorAccountMatchConfig -MatchExpression $SelectorAccountMatchConfigMatchExpression

$Schedule2Months = Initialize-Schedule2Months -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2Days = Initialize-Schedule2Days -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2Hours = Initialize-Schedule2Hours -ApplicationId "2c91808874ff91550175097daaec161c"" -AccountMatchConfig $SelectorAccountMatchConfig

$Schedule2 = Initialize-Schedule2 -Type "DAILY" -Months $Schedule2Months -Days $Schedule2Days -Hours $Schedule2Hours -Expiration (Get-Date) -TimeZoneId "America/Chicago"

$SearchScheduleRecipientsInner = Initialize-SearchScheduleRecipientsInner -Type "IDENTITY" -Id "2c9180867624cbd7017642d8c8c81f67"
$ScheduledSearchAllOfOwner = Initialize-ScheduledSearchAllOfOwner -Type "IDENTITY" -Id "2c9180867624cbd7017642d8c8c81f67"
$ScheduledSearch = Initialize-ScheduledSearch -Name "Daily disabled accounts" -Description "Daily disabled accounts" -SavedSearchId "554f1511-f0a1-4744-ab14-599514d3e57c" -Created (Get-Date) -Modified (Get-Date) -Schedule $Schedule2 -Recipients $SearchScheduleRecipientsInner -Enabled $false -EmailEmptyResults $false -DisplayQueryDetails $false -Id "0de46054-fe90-434a-b84e-c6b3359d0c64" -Owner $ScheduledSearchAllOfOwner -OwnerId "2c9180867624cbd7017642d8c8c81f67" # ScheduledSearch | The scheduled search to persist.

# Update an existing Scheduled Search
try {
    $Result = Update-V2024ScheduledSearch -Id $Id -ScheduledSearch $ScheduledSearch
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ScheduledSearch: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

