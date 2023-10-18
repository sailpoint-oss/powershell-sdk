# PSSailpoint.PSSailpoint/Api.CertificationCampaignFiltersApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CampaignFilter**](CertificationCampaignFiltersApi.md#New-CampaignFilter) | **POST** /campaign-filters | Create a Campaign Filter
[**Get-CampaignFilterById**](CertificationCampaignFiltersApi.md#Get-CampaignFilterById) | **GET** /campaign-filters/{id} | Get Campaign Filter by ID


<a name="New-CampaignFilter"></a>
# **New-CampaignFilter**
> CampaignFilterDetails New-CampaignFilter<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignFilterDetails] <PSCustomObject><br>

Create a Campaign Filter

Create a campaign Filter based on filter details and criteria.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CampaignFilterDetailsCriteriaListInner = Initialize-CampaignFilterDetailsCriteriaListInner -Type "COMPOSITE" -Operation "EQUALS" -Property "displayName" -Value "Allie"
$CampaignFilterDetails = Initialize-CampaignFilterDetails -Id "e9f9a1397b842fd5a65842087040d3ac" -Name "Identity Attribute Campaign Filter" -Description "Campaign filter to certify data based on specified property of Identity Attribute." -Owner "SailPoint Support" -Mode "INCLUSION" -CriteriaList $CampaignFilterDetailsCriteriaListInner # CampaignFilterDetails | 

# Create a Campaign Filter
try {
    $Result = New-CampaignFilter -CampaignFilterDetails $CampaignFilterDetails
} catch {
    Write-Host ("Exception occurred when calling New-CampaignFilter: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CampaignFilterById"></a>
# **Get-CampaignFilterById**
> CampaignFilterDetails[] Get-CampaignFilterById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FilterId] <String><br>

Get Campaign Filter by ID

Retrieves information for an existing campaign filter using the filter's ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$FilterId = "e9f9a1397b842fd5a65842087040d3ac" # String | The ID of the campaign filter to be retrieved.

# Get Campaign Filter by ID
try {
    $Result = Get-CampaignFilterById -FilterId $FilterId
} catch {
    Write-Host ("Exception occurred when calling Get-CampaignFilterById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **FilterId** | **String**| The ID of the campaign filter to be retrieved. | 

### Return type

[**CampaignFilterDetails[]**](CampaignFilterDetails.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

