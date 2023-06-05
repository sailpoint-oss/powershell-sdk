# PSSailpoint.PSSailpoint/Api.CertificationCampaignsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-Campaign**](CertificationCampaignsApi.md#New-Campaign) | **POST** /campaigns | Create a campaign
[**Get-Campaign**](CertificationCampaignsApi.md#Get-Campaign) | **GET** /campaigns/{id} | Get a campaign


<a name="New-Campaign"></a>
# **New-Campaign**
> Campaign New-Campaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Campaign] <PSCustomObject><br>

Create a campaign

Creates a new Certification Campaign with the information provided in the request body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CampaignAllOfFilter = Initialize-CampaignAllOfFilter -Id "0fbe863c063c4c88a35fd7f17e8a3df5" -Type "CAMPAIGN_FILTER" -Name "Test Filter"
$CampaignAllOfSourceOwnerCampaignInfo = Initialize-CampaignAllOfSourceOwnerCampaignInfo -SourceIds "MySourceIds"

$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$AccessConstraint = Initialize-AccessConstraint -Type "ENTITLEMENT" -Ids "MyIds" -Operator "ALL"
$CampaignAllOfSearchCampaignInfo = Initialize-CampaignAllOfSearchCampaignInfo -Type "IDENTITY" -Description "Search Campaign description" -Reviewer $BaseReferenceDto -Query "Search Campaign query description" -IdentityIds "MyIdentityIds" -AccessConstraints $AccessConstraint

$CampaignAllOfRoleCompositionCampaignInfoRemediatorRef = Initialize-CampaignAllOfRoleCompositionCampaignInfoRemediatorRef -Type "IDENTITY" -Id "2c90ad2a70ace7d50170acf22ca90010" -Name "Role Admin"
$CampaignAllOfRoleCompositionCampaignInfo = Initialize-CampaignAllOfRoleCompositionCampaignInfo -Reviewer $BaseReferenceDto -RoleIds "MyRoleIds" -RemediatorRef $CampaignAllOfRoleCompositionCampaignInfoRemediatorRef -Query "Search Query" -Description "Role Composition Description"

$ErrorMessageDto = Initialize-ErrorMessageDto -Locale "en-US" -LocaleOrigin "DEFAULT" -Text "The request was syntactically correct but its content is semantically invalid."
$CampaignAlert = Initialize-CampaignAlert -Level "ERROR" -Localizations $ErrorMessageDto

$CampaignAllOfSourcesWithOrphanEntitlements = Initialize-CampaignAllOfSourcesWithOrphanEntitlements -Id "2c90ad2a70ace7d50170acf22ca90010" -Type "SOURCE" -Name "Source with orphan entitlements"
$Campaign = Initialize-Campaign -Id "2c9079b270a266a60170a2779fcb0007" -Name "Manager Campaign" -Description "Everyone needs to be reviewed by their manager" -Deadline (Get-Date) -Type "MANAGER" -EmailNotificationEnabled $false -AutoRevokeAllowed $false -RecommendationsEnabled $true -Status "PENDING" -CorrelatedStatus "CORRELATED" -Created (Get-Date) -Modified (Get-Date) -VarFilter $CampaignAllOfFilter -SunsetCommentsRequired $true -SourceOwnerCampaignInfo $CampaignAllOfSourceOwnerCampaignInfo -SearchCampaignInfo $CampaignAllOfSearchCampaignInfo -RoleCompositionCampaignInfo $CampaignAllOfRoleCompositionCampaignInfo -Alerts $CampaignAlert -TotalCertifications 100 -CompletedCertifications 10 -SourcesWithOrphanEntitlements $CampaignAllOfSourcesWithOrphanEntitlements # Campaign | 

# Create a campaign
try {
    $Result = New-Campaign -Campaign $Campaign
} catch {
    Write-Host ("Exception occurred when calling New-Campaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Campaign** | [**Campaign**](Campaign.md)|  | 

### Return type

[**Campaign**](Campaign.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-Campaign"></a>
# **Get-Campaign**
> SlimCampaign Get-Campaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a campaign

Retrieves information for an existing campaign using the campaign's ID. Authorized callers must be a reviewer for this campaign, an ORG_ADMIN, or a CERT_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign to be retrieved

# Get a campaign
try {
    $Result = Get-Campaign -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-Campaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign to be retrieved | 

### Return type

[**SlimCampaign**](SlimCampaign.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

