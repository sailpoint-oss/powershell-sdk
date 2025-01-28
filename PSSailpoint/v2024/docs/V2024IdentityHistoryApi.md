# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024IdentityHistoryApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Compare-V2024IdentitySnapshots**](V2024IdentityHistoryApi.md#Compare-V2024IdentitySnapshots) | **GET** /historical-identities/{id}/compare | Gets a difference of count for each access item types for the given identity between 2 snapshots
[**Compare-V2024IdentitySnapshotsAccessType**](V2024IdentityHistoryApi.md#Compare-V2024IdentitySnapshotsAccessType) | **GET** /historical-identities/{id}/compare/{access-type} | Gets a list of differences of specific accessType for the given identity between 2 snapshots
[**Get-V2024HistoricalIdentity**](V2024IdentityHistoryApi.md#Get-V2024HistoricalIdentity) | **GET** /historical-identities/{id} | Get latest snapshot of identity
[**Get-V2024HistoricalIdentityEvents**](V2024IdentityHistoryApi.md#Get-V2024HistoricalIdentityEvents) | **GET** /historical-identities/{id}/events | Lists all events for the given identity
[**Get-V2024IdentitySnapshot**](V2024IdentityHistoryApi.md#Get-V2024IdentitySnapshot) | **GET** /historical-identities/{id}/snapshots/{date} | Gets an identity snapshot at a given date
[**Get-V2024IdentitySnapshotSummary**](V2024IdentityHistoryApi.md#Get-V2024IdentitySnapshotSummary) | **GET** /historical-identities/{id}/snapshot-summary | Gets the summary for the event count for a specific identity
[**Get-V2024IdentityStartDate**](V2024IdentityHistoryApi.md#Get-V2024IdentityStartDate) | **GET** /historical-identities/{id}/start-date | Gets the start date of the identity
[**Get-V2024HistoricalIdentities**](V2024IdentityHistoryApi.md#Get-V2024HistoricalIdentities) | **GET** /historical-identities | Lists all the identities
[**Get-V2024IdentityAccessItems**](V2024IdentityHistoryApi.md#Get-V2024IdentityAccessItems) | **GET** /historical-identities/{id}/access-items | List Access Items by Identity
[**Get-V2024IdentitySnapshotAccessItems**](V2024IdentityHistoryApi.md#Get-V2024IdentitySnapshotAccessItems) | **GET** /historical-identities/{id}/snapshots/{date}/access-items | Gets the list of identity access items at a given date filterd by item type
[**Get-V2024IdentitySnapshots**](V2024IdentityHistoryApi.md#Get-V2024IdentitySnapshots) | **GET** /historical-identities/{id}/snapshots | Lists all the snapshots for the identity


<a id="Compare-V2024IdentitySnapshots"></a>
# **Compare-V2024IdentitySnapshots**
> IdentityCompareResponse[] Compare-V2024IdentitySnapshots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Snapshot1] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Snapshot2] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessItemTypes] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Gets a difference of count for each access item types for the given identity between 2 snapshots

This method gets a difference of count for each access item types for the given identity between 2 snapshots Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Snapshot1 = "2007-03-01T13:00:00Z" # String | The snapshot 1 of identity (optional)
$Snapshot2 = "2008-03-01T13:00:00Z" # String | The snapshot 2 of identity (optional)
$AccessItemTypes = "MyAccessItemTypes" # String[] | An optional list of access item types (app, account, entitlement, etc...) to return.   If null or empty, all access items types are returned  (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Gets a difference of count for each access item types for the given identity between 2 snapshots
try {
    $Result = Compare-V2024IdentitySnapshots -Id $Id -XSailPointExperimental $XSailPointExperimental -Snapshot1 $Snapshot1 -Snapshot2 $Snapshot2 -AccessItemTypes $AccessItemTypes -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Compare-V2024IdentitySnapshots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Snapshot1** | **String**| The snapshot 1 of identity | [optional] 
 **Snapshot2** | **String**| The snapshot 2 of identity | [optional] 
 **AccessItemTypes** | [**String[]**](String.md)| An optional list of access item types (app, account, entitlement, etc...) to return.   If null or empty, all access items types are returned  | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**IdentityCompareResponse[]**](IdentityCompareResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Compare-V2024IdentitySnapshotsAccessType"></a>
# **Compare-V2024IdentitySnapshotsAccessType**
> AccessItemDiff[] Compare-V2024IdentitySnapshotsAccessType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessAssociated] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Snapshot1] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Snapshot2] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Gets a list of differences of specific accessType for the given identity between 2 snapshots

This method gets a list of differences of specific accessType for the given identity between 2 snapshots Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$AccessType = "accessProfile" # String | The specific type which needs to be compared
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$AccessAssociated = $false # Boolean | Indicates if added or removed access needs to be returned. true - added, false - removed, null - both added & removed (optional)
$Snapshot1 = "2008-03-01T13:00:00Z" # String | The snapshot 1 of identity (optional)
$Snapshot2 = "2009-03-01T13:00:00Z" # String | The snapshot 2 of identity (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Gets a list of differences of specific accessType for the given identity between 2 snapshots
try {
    $Result = Compare-V2024IdentitySnapshotsAccessType -Id $Id -AccessType $AccessType -XSailPointExperimental $XSailPointExperimental -AccessAssociated $AccessAssociated -Snapshot1 $Snapshot1 -Snapshot2 $Snapshot2 -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Compare-V2024IdentitySnapshotsAccessType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **AccessType** | **String**| The specific type which needs to be compared | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **AccessAssociated** | **Boolean**| Indicates if added or removed access needs to be returned. true - added, false - removed, null - both added &amp; removed | [optional] 
 **Snapshot1** | **String**| The snapshot 1 of identity | [optional] 
 **Snapshot2** | **String**| The snapshot 2 of identity | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**AccessItemDiff[]**](AccessItemDiff.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024HistoricalIdentity"></a>
# **Get-V2024HistoricalIdentity**
> IdentityHistoryResponse Get-V2024HistoricalIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get latest snapshot of identity

This method retrieves a specified identity Requires authorization scope of 'idn:identity-history:read'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get latest snapshot of identity
try {
    $Result = Get-V2024HistoricalIdentity -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024HistoricalIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**IdentityHistoryResponse**](IdentityHistoryResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024HistoricalIdentityEvents"></a>
# **Get-V2024HistoricalIdentityEvents**
> GetHistoricalIdentityEvents200ResponseInner[] Get-V2024HistoricalIdentityEvents<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-From] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EventTypes] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AccessItemTypes] <String[]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Lists all events for the given identity

This method retrieves all access events for the identity Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$From = "2024-03-01T13:00:00Z" # String | The optional instant until which access events are returned (optional)
$EventTypes = "MyEventTypes" # String[] | An optional list of event types to return.  If null or empty, all events are returned (optional)
$AccessItemTypes = "MyAccessItemTypes" # String[] | An optional list of access item types (app, account, entitlement, etc...) to return.   If null or empty, all access items types are returned (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Lists all events for the given identity
try {
    $Result = Get-V2024HistoricalIdentityEvents -Id $Id -XSailPointExperimental $XSailPointExperimental -From $From -EventTypes $EventTypes -AccessItemTypes $AccessItemTypes -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024HistoricalIdentityEvents: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **From** | **String**| The optional instant until which access events are returned | [optional] 
 **EventTypes** | [**String[]**](String.md)| An optional list of event types to return.  If null or empty, all events are returned | [optional] 
 **AccessItemTypes** | [**String[]**](String.md)| An optional list of access item types (app, account, entitlement, etc...) to return.   If null or empty, all access items types are returned | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**GetHistoricalIdentityEvents200ResponseInner[]**](GetHistoricalIdentityEvents200ResponseInner.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentitySnapshot"></a>
# **Get-V2024IdentitySnapshot**
> IdentityHistoryResponse Get-V2024IdentitySnapshot<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Gets an identity snapshot at a given date

This method retrieves a specified identity snapshot at a given date Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$Date = "2007-03-01T13:00:00Z" # String | The specified date
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Gets an identity snapshot at a given date
try {
    $Result = Get-V2024IdentitySnapshot -Id $Id -Date $Date -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentitySnapshot: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **Date** | **String**| The specified date | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**IdentityHistoryResponse**](IdentityHistoryResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentitySnapshotSummary"></a>
# **Get-V2024IdentitySnapshotSummary**
> MetricResponse[] Get-V2024IdentitySnapshotSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Before] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Interval] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TimeZone] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Gets the summary for the event count for a specific identity

This method gets the summary for the event count for a specific identity by month/day Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Before = "2007-03-01T13:00:00Z" # String | The date before which snapshot summary is required (optional)
$Interval = "day" # String | The interval indicating day or month. Defaults to month if not specified (optional)
$TimeZone = "UTC" # String | The time zone. Defaults to UTC if not provided (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Gets the summary for the event count for a specific identity
try {
    $Result = Get-V2024IdentitySnapshotSummary -Id $Id -XSailPointExperimental $XSailPointExperimental -Before $Before -Interval $Interval -TimeZone $TimeZone -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentitySnapshotSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Before** | **String**| The date before which snapshot summary is required | [optional] 
 **Interval** | **String**| The interval indicating day or month. Defaults to month if not specified | [optional] 
 **TimeZone** | **String**| The time zone. Defaults to UTC if not provided | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**MetricResponse[]**](MetricResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityStartDate"></a>
# **Get-V2024IdentityStartDate**
> String Get-V2024IdentityStartDate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Gets the start date of the identity

This method retrieves start date of the identity Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Gets the start date of the identity
try {
    $Result = Get-V2024IdentityStartDate -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityStartDate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

**String**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024HistoricalIdentities"></a>
# **Get-V2024HistoricalIdentities**
> IdentityListItem[] Get-V2024HistoricalIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-StartsWithQuery] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsDeleted] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IsActive] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>

Lists all the identities

This gets the list of identities for the customer. This list end point does not support count=true request param. The total  count of identities would never be returned even if the count param is specified in the request Requires authorization scope of 'idn:identity-history:read'

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$StartsWithQuery = "Ada" # String | This param is used for starts-with search for first, last and display name of the identity (optional)
$IsDeleted = $true # Boolean | Indicates if we want to only list down deleted identities or not. (optional)
$IsActive = $true # Boolean | Indicates if we want to only list active or inactive identities. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)

# Lists all the identities
try {
    $Result = Get-V2024HistoricalIdentities -XSailPointExperimental $XSailPointExperimental -StartsWithQuery $StartsWithQuery -IsDeleted $IsDeleted -IsActive $IsActive -Limit $Limit -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Get-V2024HistoricalIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **StartsWithQuery** | **String**| This param is used for starts-with search for first, last and display name of the identity | [optional] 
 **IsDeleted** | **Boolean**| Indicates if we want to only list down deleted identities or not. | [optional] 
 **IsActive** | **Boolean**| Indicates if we want to only list active or inactive identities. | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]

### Return type

[**IdentityListItem[]**](IdentityListItem.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityAccessItems"></a>
# **Get-V2024IdentityAccessItems**
> ListIdentityAccessItems200ResponseInner[] Get-V2024IdentityAccessItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>

List Access Items by Identity

This method retrieves a list of access item for the identity filtered by the access item type 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Type = "account" # String | The type of access item for the identity. If not provided, it defaults to account (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)

# List Access Items by Identity
try {
    $Result = Get-V2024IdentityAccessItems -Id $Id -XSailPointExperimental $XSailPointExperimental -Type $Type -Limit $Limit -Count $Count -Offset $Offset
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityAccessItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Type** | **String**| The type of access item for the identity. If not provided, it defaults to account | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]

### Return type

[**ListIdentityAccessItems200ResponseInner[]**](ListIdentityAccessItems200ResponseInner.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentitySnapshotAccessItems"></a>
# **Get-V2024IdentitySnapshotAccessItems**
> ListIdentityAccessItems200ResponseInner[] Get-V2024IdentitySnapshotAccessItems<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Date] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>

Gets the list of identity access items at a given date filterd by item type

This method retrieves the list of identity access items at a given date filterd by item type Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$Date = "2007-03-01T13:00:00Z" # String | The specified date
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Type = "account" # String | The access item type (optional)

# Gets the list of identity access items at a given date filterd by item type
try {
    $Result = Get-V2024IdentitySnapshotAccessItems -Id $Id -Date $Date -XSailPointExperimental $XSailPointExperimental -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentitySnapshotAccessItems: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **Date** | **String**| The specified date | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Type** | **String**| The access item type | [optional] 

### Return type

[**ListIdentityAccessItems200ResponseInner[]**](ListIdentityAccessItems200ResponseInner.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentitySnapshots"></a>
# **Get-V2024IdentitySnapshots**
> IdentitySnapshotSummaryResponse[] Get-V2024IdentitySnapshots<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Start] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Interval] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

Lists all the snapshots for the identity

This method retrieves all the snapshots for the identity Requires authorization scope of 'idn:identity-history:read' 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | The identity id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Start = "2007-03-01T13:00:00Z" # String | The specified start date (optional)
$Interval = "day" # String | The interval indicating the range in day or month for the specified interval-name (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Lists all the snapshots for the identity
try {
    $Result = Get-V2024IdentitySnapshots -Id $Id -XSailPointExperimental $XSailPointExperimental -Start $Start -Interval $Interval -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentitySnapshots: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The identity id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Start** | **String**| The specified start date | [optional] 
 **Interval** | **String**| The interval indicating the range in day or month for the specified interval-name | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**IdentitySnapshotSummaryResponse[]**](IdentitySnapshotSummaryResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

