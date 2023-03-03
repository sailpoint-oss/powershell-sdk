# PSSailpointBeta.PSSailpointBeta/Api.BetaIAICommonAccessApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaCommonAccess**](BetaIAICommonAccessApi.md#New-BetaCommonAccess) | **POST** /common-access | Create common access items
[**Get-BetaCommonAccess**](BetaIAICommonAccessApi.md#Get-BetaCommonAccess) | **GET** /common-access | Get a paginated list of common access
[**Update-BetaCommonAccessStatusInBulk**](BetaIAICommonAccessApi.md#Update-BetaCommonAccessStatusInBulk) | **POST** /common-access/update-status | Bulk update common access status


<a name="New-BetaCommonAccess"></a>
# **New-BetaCommonAccess**
> CommonAccessItemResponse New-BetaCommonAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonAccessItemRequest] <PSCustomObject><br>

Create common access items

This API is used to add roles/access profiles to the list of common access for a customer. Requires authorization scope of iai:access-modeling:create

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CommonAccessItemAccess = Initialize-CommonAccessItemAccess -Id "MyId" -Type "ACCESS_PROFILE" -Name "MyName" -Description "MyDescription" -OwnerName "MyOwnerName" -OwnerId "MyOwnerId"
$CommonAccessItemRequest = Initialize-CommonAccessItemRequest -Access $CommonAccessItemAccess -Status "CONFIRMED" # CommonAccessItemRequest | 

# Create common access items
try {
    $Result = New-BetaCommonAccess -CommonAccessItemRequest $CommonAccessItemRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaCommonAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CommonAccessItemRequest** | [**CommonAccessItemRequest**](CommonAccessItemRequest.md)|  | 

### Return type

[**CommonAccessItemResponse**](CommonAccessItemResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCommonAccess"></a>
# **Get-BetaCommonAccess**
> CommonAccessResponse[] Get-BetaCommonAccess<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Get a paginated list of common access

This endpoint returns the current common access for a customer. The returned items can be filtered and sorted. Requires authorization scope of iai:access-modeling:read

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
$Filters = "MyFilters" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407)  Filtering is supported for the following fields and operators:  **status**: *eq* ""CONFIRMED"" or ""DENIED"" **reviewedByUser** *eq* true or false **access.id**: *eq* ""id"" **access.type**: *eq* ""ROLE"" or ""ACCESS_PROFILE"" **access.name**: *sw* ""Administrator"" **access.description**: *sw* ""admin"" (optional)
$Sorters = "MySorters" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407)  Sorting is supported for the following fields: **access.name,status**  By default the common access items are sorted by name, ascending. (optional)

# Get a paginated list of common access
try {
    $Result = Get-BetaCommonAccess -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCommonAccess: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407)  Filtering is supported for the following fields and operators:  **status**: *eq* &quot;&quot;CONFIRMED&quot;&quot; or &quot;&quot;DENIED&quot;&quot; **reviewedByUser** *eq* true or false **access.id**: *eq* &quot;&quot;id&quot;&quot; **access.type**: *eq* &quot;&quot;ROLE&quot;&quot; or &quot;&quot;ACCESS_PROFILE&quot;&quot; **access.name**: *sw* &quot;&quot;Administrator&quot;&quot; **access.description**: *sw* &quot;&quot;admin&quot;&quot; | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://community.sailpoint.com/t5/IdentityNow-Wiki/V3-API-Standard-Collection-Parameters/ta-p/156407)  Sorting is supported for the following fields: **access.name,status**  By default the common access items are sorted by name, ascending. | [optional] 

### Return type

[**CommonAccessResponse[]**](CommonAccessResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaCommonAccessStatusInBulk"></a>
# **Update-BetaCommonAccessStatusInBulk**
> SystemCollectionsHashtable Update-BetaCommonAccessStatusInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CommonAccessIDStatus] <PSCustomObject[]><br>

Bulk update common access status

This submits an update request to the common access application. At this time there are no parameters. Requires authorization scope of iai:access-modeling:update

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CommonAccessIDStatus = Initialize-CommonAccessIDStatus -ConfirmedIds "MyConfirmedIds" -DeniedIds "MyDeniedIds" # CommonAccessIDStatus[] | Confirm or deny in bulk the common access ids that are (or aren't) common access

# Bulk update common access status
try {
    $Result = Update-BetaCommonAccessStatusInBulk -CommonAccessIDStatus $CommonAccessIDStatus
} catch {
    Write-Host ("Exception occurred when calling Update-BetaCommonAccessStatusInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CommonAccessIDStatus** | [**CommonAccessIDStatus[]**](CommonAccessIDStatus.md)| Confirm or deny in bulk the common access ids that are (or aren&#39;t) common access | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

