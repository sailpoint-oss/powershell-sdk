# PSSailpointV2024.PSSailpointV2024\Api.V2024SegmentsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024Segment**](V2024SegmentsApi.md#New-V2024Segment) | **POST** /segments | Create Segment
[**Remove-V2024Segment**](V2024SegmentsApi.md#Remove-V2024Segment) | **DELETE** /segments/{id} | Delete Segment by ID
[**Get-V2024Segment**](V2024SegmentsApi.md#Get-V2024Segment) | **GET** /segments/{id} | Get Segment by ID
[**Get-V2024Segments**](V2024SegmentsApi.md#Get-V2024Segments) | **GET** /segments | List Segments
[**Update-V2024Segment**](V2024SegmentsApi.md#Update-V2024Segment) | **PATCH** /segments/{id} | Update Segment


<a id="New-V2024Segment"></a>
# **New-V2024Segment**
> Segment New-V2024Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Segment] <PSCustomObject><br>

Create Segment

This API creates a segment.  >**Note:** Segment definitions may take time to propagate to all identities. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$OwnerReferenceSegments = Initialize-OwnerReferenceSegments -Type "IDENTITY" -Id "2c9180a46faadee4016fb4e018c20639" -Name "support"

$Value = Initialize-Value -Type "STRING" -Value "Austin"

$ExpressionChildrenInner = Initialize-ExpressionChildrenInner -Operator "AND" -Attribute "location" -Value $Value -Children "MyChildren"

$Expression = Initialize-Expression -Operator "AND" -Attribute "location" -Value $Value -Children $ExpressionChildrenInner

$SegmentVisibilityCriteria = Initialize-SegmentVisibilityCriteria -Expression $Expression

$Segment = Initialize-Segment -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "segment-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This segment represents xyz" -Owner $OwnerReferenceSegments -VisibilityCriteria $SegmentVisibilityCriteria -Active $true # Segment | 

# Create Segment
try {
    $Result = New-V2024Segment -Segment $Segment
} catch {
    Write-Host ("Exception occurred when calling New-V2024Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Remove-V2024Segment"></a>
# **Remove-V2024Segment**
> void Remove-V2024Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Segment by ID

This API deletes the segment specified by the given ID. >**Note:** that segment deletion may take some time to become effective. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The segment ID to delete.

# Delete Segment by ID
try {
    $Result = Remove-V2024Segment -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The segment ID to delete. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Segment"></a>
# **Get-V2024Segment**
> Segment Get-V2024Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Segment by ID

This API returns the segment specified by the given ID. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The segment ID to retrieve.

# Get Segment by ID
try {
    $Result = Get-V2024Segment -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The segment ID to retrieve. | 

### Return type

[**Segment**](Segment.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Segments"></a>
# **Get-V2024Segments**
> Segment[] Get-V2024Segments<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Segments

This API returns a list of all segments.  A token with ORG_ADMIN or API authority is required to call this API.

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
    $Result = Get-V2024Segments -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Segments: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-V2024Segment"></a>
# **Update-V2024Segment**
> Segment Update-V2024Segment<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <PSCustomObject[]><br>

Update Segment

Use this API to update segment fields by using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. >**Note:** Changes to a segment may take some time to propagate to all identities. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The segment ID to modify.
$RequestBody =  # SystemCollectionsHashtable[] | A list of segment update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * owner * visibilityCriteria * active 

# Update Segment
try {
    $Result = Update-V2024Segment -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-V2024Segment: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The segment ID to modify. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of segment update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * owner * visibilityCriteria * active  | 

### Return type

[**Segment**](Segment.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

