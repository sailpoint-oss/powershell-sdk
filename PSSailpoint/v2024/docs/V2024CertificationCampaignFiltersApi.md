# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024CertificationCampaignFiltersApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024CampaignFilter**](V2024CertificationCampaignFiltersApi.md#New-V2024CampaignFilter) | **POST** /campaign-filters | Create Campaign Filter
[**Remove-V2024CampaignFilters**](V2024CertificationCampaignFiltersApi.md#Remove-V2024CampaignFilters) | **POST** /campaign-filters/delete | Deletes Campaign Filters
[**Get-V2024CampaignFilterById**](V2024CertificationCampaignFiltersApi.md#Get-V2024CampaignFilterById) | **GET** /campaign-filters/{id} | Get Campaign Filter by ID
[**Get-V2024CampaignFilters**](V2024CertificationCampaignFiltersApi.md#Get-V2024CampaignFilters) | **GET** /campaign-filters | List Campaign Filters
[**Update-V2024CampaignFilter**](V2024CertificationCampaignFiltersApi.md#Update-V2024CampaignFilter) | **POST** /campaign-filters/{id} | Updates a Campaign Filter


<a id="New-V2024CampaignFilter"></a>
# **New-V2024CampaignFilter**
> CampaignFilterDetails New-V2024CampaignFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignFilterDetails] <PSCustomObject><br>

Create Campaign Filter

Use this API to create a campaign filter based on filter details and criteria.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Operation = Initialize-Operation 
$CampaignFilterDetailsCriteriaListInner = Initialize-CampaignFilterDetailsCriteriaListInner -Type "COMPOSITE" -Operation $Operation -Property "displayName" -Value "Allie"

$CampaignFilterDetails = Initialize-CampaignFilterDetails -Id "5ec18cef39020d6fd7a60ad3970aba61" -Name "Identity Attribute Campaign Filter" -Description "Campaign filter to certify data based on an identity attribute's specified property." -Owner "SailPoint Support" -Mode "INCLUSION" -CriteriaList $CampaignFilterDetailsCriteriaListInner -IsSystemFilter $false # CampaignFilterDetails | 

# Create Campaign Filter
try {
    $Result = New-V2024CampaignFilter -CampaignFilterDetails $CampaignFilterDetails
} catch {
    Write-Host ("Exception occurred when calling New-V2024CampaignFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CampaignFilterDetails** | [**CampaignFilterDetails**](CampaignFilterDetails.md)|  | 

### Return type

[**CampaignFilterDetails**](CampaignFilterDetails.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024CampaignFilters"></a>
# **Remove-V2024CampaignFilters**
> void Remove-V2024CampaignFilters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Deletes Campaign Filters

Deletes campaign filters whose Ids are specified in the provided list of campaign filter Ids. Authorized callers must be an ORG_ADMIN or a CERT_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestBody = "MyRequestBody" # String[] | A json list of IDs of campaign filters to delete.

# Deletes Campaign Filters
try {
    $Result = Remove-V2024CampaignFilters -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024CampaignFilters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| A json list of IDs of campaign filters to delete. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CampaignFilterById"></a>
# **Get-V2024CampaignFilterById**
> CampaignFilterDetails Get-V2024CampaignFilterById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Campaign Filter by ID

Retrieves information for an existing campaign filter using the filter's ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "e9f9a1397b842fd5a65842087040d3ac" # String | The ID of the campaign filter to be retrieved.

# Get Campaign Filter by ID
try {
    $Result = Get-V2024CampaignFilterById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CampaignFilterById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign filter to be retrieved. | 

### Return type

[**CampaignFilterDetails**](CampaignFilterDetails.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024CampaignFilters"></a>
# **Get-V2024CampaignFilters**
> ListCampaignFilters200Response Get-V2024CampaignFilters<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Start] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSystemFilters] <System.Nullable[Boolean]><br>

List Campaign Filters

Use this API to list all campaign filters. You can reduce scope with standard V3 query parameters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Start = 0 # Int32 | Start/Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$IncludeSystemFilters = $true # Boolean | If this is true, the API includes system filters in the count and results. Otherwise it excludes them. If no value is provided, the default is true.  (optional) (default to $true)

# List Campaign Filters
try {
    $Result = Get-V2024CampaignFilters -Limit $Limit -Start $Start -IncludeSystemFilters $IncludeSystemFilters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024CampaignFilters: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Start** | **Int32**| Start/Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **IncludeSystemFilters** | **Boolean**| If this is true, the API includes system filters in the count and results. Otherwise it excludes them. If no value is provided, the default is true.  | [optional] [default to $true]

### Return type

[**ListCampaignFilters200Response**](ListCampaignFilters200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024CampaignFilter"></a>
# **Update-V2024CampaignFilter**
> CampaignFilterDetails Update-V2024CampaignFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignFilterDetails] <PSCustomObject><br>

Updates a Campaign Filter

Updates an existing campaign filter using the filter's ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FilterId = "e9f9a1397b842fd5a65842087040d3ac" # String | The ID of the campaign filter being modified.
$Operation = Initialize-Operation 
$CampaignFilterDetailsCriteriaListInner = Initialize-CampaignFilterDetailsCriteriaListInner -Type "COMPOSITE" -Operation $Operation -Property "displayName" -Value "Allie"

$CampaignFilterDetails = Initialize-CampaignFilterDetails -Id "5ec18cef39020d6fd7a60ad3970aba61" -Name "Identity Attribute Campaign Filter" -Description "Campaign filter to certify data based on an identity attribute's specified property." -Owner "SailPoint Support" -Mode "INCLUSION" -CriteriaList $CampaignFilterDetailsCriteriaListInner -IsSystemFilter $false # CampaignFilterDetails | A campaign filter details with updated field values.

# Updates a Campaign Filter
try {
    $Result = Update-V2024CampaignFilter -FilterId $FilterId -CampaignFilterDetails $CampaignFilterDetails
} catch {
    Write-Host ("Exception occurred when calling Update-V2024CampaignFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterId** | **String**| The ID of the campaign filter being modified. | 
 **CampaignFilterDetails** | [**CampaignFilterDetails**](CampaignFilterDetails.md)| A campaign filter details with updated field values. | 

### Return type

[**CampaignFilterDetails**](CampaignFilterDetails.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

