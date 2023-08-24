# PSSailpoint.PSSailpoint/Api.SegmentsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Segment**](SegmentsApi.md#New-Segment) | **POST** /segments | Create Segment
[**Remove-Segment**](SegmentsApi.md#Remove-Segment) | **DELETE** /segments/{id} | Delete Segment by ID
[**Get-Segment**](SegmentsApi.md#Get-Segment) | **GET** /segments/{id} | Get a Segment by ID
[**Get-Segments**](SegmentsApi.md#Get-Segments) | **GET** /segments | List Segments
[**Update-Segment**](SegmentsApi.md#Update-Segment) | **PATCH** /segments/{id} | Update a Segment


<a name="New-Segment"></a>
# **New-Segment**
> Segment New-Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Segment] <PSCustomObject><br>

Create Segment

This API creates a segment.  Note that segment definitions may take time to propagate to all identities.  A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerReference = Initialize-OwnerReference -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c9180a46faadee4016fb4e018c20639" -Name "support"

$Value = Initialize-Value -Type "STRING" -Value "Austin"
$Expression = Initialize-Expression -Operator "AND" -Attribute "location" -Value $Value -Children $Value

$VisibilityCriteria = Initialize-VisibilityCriteria -Expression $Expression

$Segment = Initialize-Segment -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "segment-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This segment represents xyz" -Owner $OwnerReference -VisibilityCriteria $VisibilityCriteria -Active $true # Segment | 

# Create Segment
try {
    $Result = New-Segment -Segment $Segment
} catch {
    Write-Host ("Exception occurred when calling New-Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Segment** | [**Segment**](Segment.md)|  | 

### Return type

[**Segment**](Segment.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-Segment"></a>
# **Remove-Segment**
> void Remove-Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Segment by ID

This API deletes the segment specified by the given ID.  Note that segment deletion may take some time to become effective.  A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the Segment to delete.

# Delete Segment by ID
try {
    $Result = Remove-Segment -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the Segment to delete. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Segment"></a>
# **Get-Segment**
> Segment Get-Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Segment by ID

This API returns the segment specified by the given ID.  A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the Segment to retrieve.

# Get a Segment by ID
try {
    $Result = Get-Segment -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the Segment to retrieve. | 

### Return type

[**Segment**](Segment.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Segments"></a>
# **Get-Segments**
> Segment[] Get-Segments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Segments

This API returns a list of all segments. A token with ORG_ADMIN or API authority is required to call this API.

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

# List Segments
try {
    $Result = Get-Segments -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-Segments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[**Segment[]**](Segment.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-Segment"></a>
# **Update-Segment**
> Segment Update-Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <PSCustomObject[]><br>

Update a Segment

Allows updating Segment fields using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  Note that changes to a segment may take some time to propagate to all identities, and that segments will have no effect if segmentation is not enabled for your org.  A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the Segment being modified.
$RequestBody =  # SystemCollectionsHashtable[] | A list of Segment update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.   The following fields are patchable: * name * description * owner * visibilityCriteria * active 

# Update a Segment
try {
    $Result = Update-Segment -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the Segment being modified. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of Segment update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.   The following fields are patchable: * name * description * owner * visibilityCriteria * active  | 

### Return type

[**Segment**](Segment.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

