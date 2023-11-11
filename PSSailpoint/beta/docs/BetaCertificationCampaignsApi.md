# PSSailpointBeta.PSSailpointBeta/Api.BetaCertificationCampaignsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Complete-BetaCampaign**](BetaCertificationCampaignsApi.md#Complete-BetaCampaign) | **POST** /campaigns/{id}/complete | Complete a Campaign
[**New-BetaCampaign**](BetaCertificationCampaignsApi.md#New-BetaCampaign) | **POST** /campaigns | Create a campaign
[**New-BetaCampaignTemplate**](BetaCertificationCampaignsApi.md#New-BetaCampaignTemplate) | **POST** /campaign-templates | Create a Campaign Template
[**Remove-BetaCampaignTemplate**](BetaCertificationCampaignsApi.md#Remove-BetaCampaignTemplate) | **DELETE** /campaign-templates/{id} | Delete a Campaign Template
[**Remove-BetaCampaignTemplateSchedule**](BetaCertificationCampaignsApi.md#Remove-BetaCampaignTemplateSchedule) | **DELETE** /campaign-templates/{id}/schedule | Deletes a Campaign Template&#39;s Schedule
[**Remove-BetaCampaigns**](BetaCertificationCampaignsApi.md#Remove-BetaCampaigns) | **POST** /campaigns/delete | Deletes Campaigns
[**Get-BetaActiveCampaigns**](BetaCertificationCampaignsApi.md#Get-BetaActiveCampaigns) | **GET** /campaigns | List Campaigns
[**Get-BetaCampaign**](BetaCertificationCampaignsApi.md#Get-BetaCampaign) | **GET** /campaigns/{id} | Get a campaign
[**Get-BetaCampaignReports**](BetaCertificationCampaignsApi.md#Get-BetaCampaignReports) | **GET** /campaigns/{id}/reports | Get Campaign Reports
[**Get-BetaCampaignReportsConfig**](BetaCertificationCampaignsApi.md#Get-BetaCampaignReportsConfig) | **GET** /campaigns/reports-configuration | Get Campaign Reports Configuration
[**Get-BetaCampaignTemplate**](BetaCertificationCampaignsApi.md#Get-BetaCampaignTemplate) | **GET** /campaign-templates/{id} | Get a Campaign Template
[**Get-BetaCampaignTemplateSchedule**](BetaCertificationCampaignsApi.md#Get-BetaCampaignTemplateSchedule) | **GET** /campaign-templates/{id}/schedule | Gets a Campaign Template&#39;s Schedule
[**Get-BetaCampaignTemplates**](BetaCertificationCampaignsApi.md#Get-BetaCampaignTemplates) | **GET** /campaign-templates | List Campaign Templates
[**Move-Beta**](BetaCertificationCampaignsApi.md#Move-Beta) | **POST** /campaigns/{id}/reassign | Reassign Certifications
[**Update-BetaCampaignTemplate**](BetaCertificationCampaignsApi.md#Update-BetaCampaignTemplate) | **PATCH** /campaign-templates/{id} | Update a Campaign Template
[**Set-BetaCampaignReportsConfig**](BetaCertificationCampaignsApi.md#Set-BetaCampaignReportsConfig) | **PUT** /campaigns/reports-configuration | Set Campaign Reports Configuration
[**Set-BetaCampaignTemplateSchedule**](BetaCertificationCampaignsApi.md#Set-BetaCampaignTemplateSchedule) | **PUT** /campaign-templates/{id}/schedule | Sets a Campaign Template&#39;s Schedule
[**Start-BetaCampaign**](BetaCertificationCampaignsApi.md#Start-BetaCampaign) | **POST** /campaigns/{id}/activate | Activate a Campaign
[**Start-BetaCampaignRemediationScan**](BetaCertificationCampaignsApi.md#Start-BetaCampaignRemediationScan) | **POST** /campaigns/{id}/run-remediation-scan | Run Campaign Remediation Scan
[**Start-BetaCampaignReport**](BetaCertificationCampaignsApi.md#Start-BetaCampaignReport) | **POST** /campaigns/{id}/run-report/{type} | Run Campaign Report
[**Start-BetaGenerateCampaignTemplate**](BetaCertificationCampaignsApi.md#Start-BetaGenerateCampaignTemplate) | **POST** /campaign-templates/{id}/generate | Generate a Campaign from Template
[**Update-BetaCampaign**](BetaCertificationCampaignsApi.md#Update-BetaCampaign) | **PATCH** /campaigns/{id} | Update a Campaign


<a name="Complete-BetaCampaign"></a>
# **Complete-BetaCampaign**
> SystemCollectionsHashtable Complete-BetaCampaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CompleteCampaignOptions] <PSCustomObject><br>

Complete a Campaign

:::caution  This endpoint will run successfully for any campaigns that are **past due**.  This endpoint will return a content error if the campaign is **not past due**.  :::  Completes a certification campaign. This is provided to admins so that they can complete a certification even if all items have not been completed.  Requires roles of CERT_ADMIN and ORG_ADMIN 

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The campaign id
$CompleteCampaignOptions = Initialize-CompleteCampaignOptions -AutoCompleteAction "APPROVE" # CompleteCampaignOptions | Optional. Default behavior is for the campaign to auto-approve upon completion, unless autoCompleteAction=REVOKE (optional)

# Complete a Campaign
try {
    $Result = Complete-BetaCampaign -Id $Id -CompleteCampaignOptions $CompleteCampaignOptions
} catch {
    Write-Host ("Exception occurred when calling Complete-BetaCampaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The campaign id | 
 **CompleteCampaignOptions** | [**CompleteCampaignOptions**](CompleteCampaignOptions.md)| Optional. Default behavior is for the campaign to auto-approve upon completion, unless autoCompleteAction&#x3D;REVOKE | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaCampaign"></a>
# **New-BetaCampaign**
> Campaign New-BetaCampaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Campaign] <PSCustomObject><br>

Create a campaign

Creates a new Certification Campaign with the information provided in the request body.

### Example
```powershell
$FullcampaignAllOfFilter = Initialize-FullcampaignAllOfFilter -Id "0fbe863c063c4c88a35fd7f17e8a3df5" -Type "CAMPAIGN_FILTER" -Name "Test Filter"
$FullcampaignAllOfSourceOwnerCampaignInfo = Initialize-FullcampaignAllOfSourceOwnerCampaignInfo -SourceIds "MySourceIds"

$FullcampaignAllOfSearchCampaignInfoReviewer = Initialize-FullcampaignAllOfSearchCampaignInfoReviewer -Type "GOVERNANCE_GROUP" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$AccessConstraint = Initialize-AccessConstraint -Type "ENTITLEMENT" -Ids "MyIds" -Operator "ALL"
$FullcampaignAllOfSearchCampaignInfo = Initialize-FullcampaignAllOfSearchCampaignInfo -Type "IDENTITY" -Description "Search Campaign description" -Reviewer $FullcampaignAllOfSearchCampaignInfoReviewer -Query "Search Campaign query description" -IdentityIds "MyIdentityIds" -AccessConstraints $AccessConstraint

$FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef = Initialize-FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef -Type "IDENTITY" -Id "2c90ad2a70ace7d50170acf22ca90010" -Name "Role Admin"
$FullcampaignAllOfRoleCompositionCampaignInfo = Initialize-FullcampaignAllOfRoleCompositionCampaignInfo -Reviewer $FullcampaignAllOfSearchCampaignInfoReviewer -RoleIds "MyRoleIds" -RemediatorRef $FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef -Query "Search Query" -Description "Role Composition Description"

$ErrorMessageDto = Initialize-ErrorMessageDto -Locale "en-US" -LocaleOrigin "DEFAULT" -Text "The request was syntactically correct but its content is semantically invalid."
$CampaignAlert = Initialize-CampaignAlert -Level "ERROR" -Localizations $ErrorMessageDto

$FullcampaignAllOfSourcesWithOrphanEntitlements = Initialize-FullcampaignAllOfSourcesWithOrphanEntitlements -Id "2c90ad2a70ace7d50170acf22ca90010" -Type "SOURCE" -Name "Source with orphan entitlements"
$Campaign = Initialize-Campaign -Id "2c9079b270a266a60170a2779fcb0007" -Name "Manager Campaign" -Description "Everyone needs to be reviewed by their manager" -Deadline (Get-Date) -Type "MANAGER" -EmailNotificationEnabled $false -AutoRevokeAllowed $false -RecommendationsEnabled $true -Status "PENDING" -CorrelatedStatus "CORRELATED" -Created (Get-Date) -Modified (Get-Date) -VarFilter $FullcampaignAllOfFilter -SunsetCommentsRequired $true -SourceOwnerCampaignInfo $FullcampaignAllOfSourceOwnerCampaignInfo -SearchCampaignInfo $FullcampaignAllOfSearchCampaignInfo -RoleCompositionCampaignInfo $FullcampaignAllOfRoleCompositionCampaignInfo -Alerts $CampaignAlert -TotalCertifications 100 -CompletedCertifications 10 -SourcesWithOrphanEntitlements $FullcampaignAllOfSourcesWithOrphanEntitlements -MandatoryCommentRequirement "ALL_DECISIONS" # Campaign | 

# Create a campaign
try {
    $Result = New-BetaCampaign -Campaign $Campaign
} catch {
    Write-Host ("Exception occurred when calling New-BetaCampaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaCampaignTemplate"></a>
# **New-BetaCampaignTemplate**
> CampaignTemplate New-BetaCampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignTemplate] <PSCustomObject><br>

Create a Campaign Template

Create a campaign Template based on campaign.

### Example
```powershell
$CampaignTemplateOwnerRef = Initialize-CampaignTemplateOwnerRef -Id "2c918086676d3e0601677611dbde220f" -Type "IDENTITY" -Name "Mister Manager" -Email "mr.manager@example.com"
$CampaignTemplate = Initialize-CampaignTemplate -Id "2c9079b270a266a60170a277bb960008" -Name "Manager Campaign Template" -Description "Template for the annual manager campaign." -Created (Get-Date) -Modified (Get-Date) -Scheduled $false -OwnerRef $CampaignTemplateOwnerRef -DeadlineDuration "P2W" -Campaign # CampaignTemplate | 

# Create a Campaign Template
try {
    $Result = New-BetaCampaignTemplate -CampaignTemplate $CampaignTemplate
} catch {
    Write-Host ("Exception occurred when calling New-BetaCampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CampaignTemplate** | [**CampaignTemplate**](CampaignTemplate.md)|  | 

### Return type

[**CampaignTemplate**](CampaignTemplate.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaCampaignTemplate"></a>
# **Remove-BetaCampaignTemplate**
> void Remove-BetaCampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Campaign Template

Deletes a campaign template by ID.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The ID of the campaign template being deleted.

# Delete a Campaign Template
try {
    $Result = Remove-BetaCampaignTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaCampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template being deleted. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaCampaignTemplateSchedule"></a>
# **Remove-BetaCampaignTemplateSchedule**
> void Remove-BetaCampaignTemplateSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Deletes a Campaign Template's Schedule

Deletes the schedule for a campaign template. Returns a 404 if there is no schedule set.

### Example
```powershell
$Id = "04bedce387bd47b2ae1f86eb0bb36dee" # String | The ID of the campaign template whose schedule is being deleted.

# Deletes a Campaign Template's Schedule
try {
    $Result = Remove-BetaCampaignTemplateSchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaCampaignTemplateSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template whose schedule is being deleted. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaCampaigns"></a>
# **Remove-BetaCampaigns**
> SystemCollectionsHashtable Remove-BetaCampaigns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DeleteCampaignsRequest] <PSCustomObject><br>

Deletes Campaigns

Deletes campaigns whose Ids are specified in the provided list of campaign Ids. Authorized callers must be an ORG_ADMIN or a CERT_ADMIN.

### Example
```powershell
$DeleteCampaignsRequest = Initialize-DeleteCampaignsRequest -Ids "MyIds" # DeleteCampaignsRequest | The ids of the campaigns to delete.

# Deletes Campaigns
try {
    $Result = Remove-BetaCampaigns -DeleteCampaignsRequest $DeleteCampaignsRequest
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaCampaigns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DeleteCampaignsRequest** | [**DeleteCampaignsRequest**](DeleteCampaignsRequest.md)| The ids of the campaigns to delete. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaActiveCampaigns"></a>
# **Get-BetaActiveCampaigns**
> GetActiveCampaigns200ResponseInner[] Get-BetaActiveCampaigns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Detail] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List Campaigns

Gets campaigns and returns them in a list. Can provide increased level of detail for each campaign if provided the correct query.

### Example
```powershell
$Detail = "SLIM" # String | Determines whether slim, or increased level of detail is provided for each campaign in the returned list. Slim is the default behavior. (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "name eq "Manager Campaign"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **status**: *eq, in* (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created** (optional)

# List Campaigns
try {
    $Result = Get-BetaActiveCampaigns -Detail $Detail -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaActiveCampaigns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Detail** | **String**| Determines whether slim, or increased level of detail is provided for each campaign in the returned list. Slim is the default behavior. | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **status**: *eq, in* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created** | [optional] 

### Return type

[**GetActiveCampaigns200ResponseInner[]**](GetActiveCampaigns200ResponseInner.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCampaign"></a>
# **Get-BetaCampaign**
> Slimcampaign Get-BetaCampaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a campaign

Retrieves information for an existing campaign using the campaign's ID. Authorized callers must be a reviewer for this campaign, an ORG_ADMIN, or a CERT_ADMIN.

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign to be retrieved

# Get a campaign
try {
    $Result = Get-BetaCampaign -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCampaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign to be retrieved | 

### Return type

[**Slimcampaign**](Slimcampaign.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCampaignReports"></a>
# **Get-BetaCampaignReports**
> CampaignReport[] Get-BetaCampaignReports<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Campaign Reports

Fetches all reports for a certification campaign by campaign ID. Requires roles of CERT_ADMIN, DASHBOARD, ORG_ADMIN and REPORT_ADMIN

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign for which reports are being fetched.

# Get Campaign Reports
try {
    $Result = Get-BetaCampaignReports -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCampaignReports: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign for which reports are being fetched. | 

### Return type

[**CampaignReport[]**](CampaignReport.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCampaignReportsConfig"></a>
# **Get-BetaCampaignReportsConfig**
> CampaignReportsConfig Get-BetaCampaignReportsConfig<br>

Get Campaign Reports Configuration

Fetches configuration for campaign reports. Currently it includes only one element - identity attributes defined as custom report columns. Requires roles of CERT_ADMIN and ORG_ADMIN.

### Example
```powershell

# Get Campaign Reports Configuration
try {
    $Result = Get-BetaCampaignReportsConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCampaignReportsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**CampaignReportsConfig**](CampaignReportsConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCampaignTemplate"></a>
# **Get-BetaCampaignTemplate**
> CampaignTemplate Get-BetaCampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Campaign Template

Fetches a campaign template by ID.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The desired campaign template's ID.

# Get a Campaign Template
try {
    $Result = Get-BetaCampaignTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The desired campaign template&#39;s ID. | 

### Return type

[**CampaignTemplate**](CampaignTemplate.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCampaignTemplateSchedule"></a>
# **Get-BetaCampaignTemplateSchedule**
> Schedule Get-BetaCampaignTemplateSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Gets a Campaign Template's Schedule

Gets the schedule for a campaign template. Returns a 404 if there is no schedule set.

### Example
```powershell
$Id = "04bedce387bd47b2ae1f86eb0bb36dee" # String | The ID of the campaign template whose schedule is being fetched.

# Gets a Campaign Template's Schedule
try {
    $Result = Get-BetaCampaignTemplateSchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCampaignTemplateSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template whose schedule is being fetched. | 

### Return type

[**Schedule**](Schedule.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaCampaignTemplates"></a>
# **Get-BetaCampaignTemplates**
> CampaignTemplate[] Get-BetaCampaignTemplates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Campaign Templates

Lists all CampaignTemplates. Scope can be reduced via standard V3 query params.  All CampaignTemplates matching the query params

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** (optional)
$Filters = "name eq "manager template"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, ge, gt, in, le, lt, ne, sw*  **id**: *eq, ge, gt, in, le, lt, ne, sw* (optional)

# List Campaign Templates
try {
    $Result = Get-BetaCampaignTemplates -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaCampaignTemplates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq, ge, gt, in, le, lt, ne, sw*  **id**: *eq, ge, gt, in, le, lt, ne, sw* | [optional] 

### Return type

[**CampaignTemplate[]**](CampaignTemplate.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Move-Beta"></a>
# **Move-Beta**
> CertificationTask Move-Beta<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-AdminReviewReassign] <PSCustomObject><br>

Reassign Certifications

This API reassigns the specified certifications from one identity to another. A token with ORG_ADMIN or CERT_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The certification campaign ID
$AdminReviewReassignReassignTo = Initialize-AdminReviewReassignReassignTo -Id "ef38f94347e94562b5bb8424a56397d8" -Type "IDENTITY"
$AdminReviewReassign = Initialize-AdminReviewReassign -CertificationIds "MyCertificationIds" -ReassignTo $AdminReviewReassignReassignTo -Reason "reassigned for some reason" # AdminReviewReassign | 

# Reassign Certifications
try {
    $Result = Move-Beta -Id $Id -AdminReviewReassign $AdminReviewReassign
} catch {
    Write-Host ("Exception occurred when calling Move-Beta: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The certification campaign ID | 
 **AdminReviewReassign** | [**AdminReviewReassign**](AdminReviewReassign.md)|  | 

### Return type

[**CertificationTask**](CertificationTask.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaCampaignTemplate"></a>
# **Update-BetaCampaignTemplate**
> CampaignTemplate Update-BetaCampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update a Campaign Template

Allows updating individual fields on a campaign template using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The ID of the campaign template being modified.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of campaign update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * deadlineDuration * campaign (all fields that are allowed during create) 

# Update a Campaign Template
try {
    $Result = Update-BetaCampaignTemplate -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaCampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template being modified. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of campaign update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * name * description * deadlineDuration * campaign (all fields that are allowed during create)  | 

### Return type

[**CampaignTemplate**](CampaignTemplate.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-BetaCampaignReportsConfig"></a>
# **Set-BetaCampaignReportsConfig**
> CampaignReportsConfig Set-BetaCampaignReportsConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignReportsConfig] <PSCustomObject><br>

Set Campaign Reports Configuration

Overwrites configuration for campaign reports. Requires roles CERT_ADMIN and ORG_ADMIN.

### Example
```powershell
$CampaignReportsConfig = Initialize-CampaignReportsConfig -IdentityAttributeColumns "MyIdentityAttributeColumns" # CampaignReportsConfig | Campaign Report Configuration

# Set Campaign Reports Configuration
try {
    $Result = Set-BetaCampaignReportsConfig -CampaignReportsConfig $CampaignReportsConfig
} catch {
    Write-Host ("Exception occurred when calling Set-BetaCampaignReportsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CampaignReportsConfig** | [**CampaignReportsConfig**](CampaignReportsConfig.md)| Campaign Report Configuration | 

### Return type

[**CampaignReportsConfig**](CampaignReportsConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-BetaCampaignTemplateSchedule"></a>
# **Set-BetaCampaignTemplateSchedule**
> void Set-BetaCampaignTemplateSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Schedule] <PSCustomObject><br>

Sets a Campaign Template's Schedule

Sets the schedule for a campaign template. If a schedule already exists, it will be overwritten with the new one.

### Example
```powershell
$Id = "04bedce387bd47b2ae1f86eb0bb36dee" # String | The ID of the campaign template being scheduled.
$ScheduleMonths = Initialize-ScheduleMonths -Type "LIST" -Values "MyValues" -Interval 2
$ScheduleDays = Initialize-ScheduleDays -Type "LIST" -Values "MyValues" -Interval 2
$ScheduleHours = Initialize-ScheduleHours -Type "LIST" -Values "MyValues" -Interval 2
$Schedule = Initialize-Schedule -Type "WEEKLY" -Months $ScheduleMonths -Days $ScheduleDays -Hours $ScheduleHours -Expiration (Get-Date) -TimeZoneId "CST" # Schedule |  (optional)

# Sets a Campaign Template's Schedule
try {
    $Result = Set-BetaCampaignTemplateSchedule -Id $Id -Schedule $Schedule
} catch {
    Write-Host ("Exception occurred when calling Set-BetaCampaignTemplateSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template being scheduled. | 
 **Schedule** | [**Schedule**](Schedule.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-BetaCampaign"></a>
# **Start-BetaCampaign**
> SystemCollectionsHashtable Start-BetaCampaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActivateCampaignOptions] <PSCustomObject><br>

Activate a Campaign

Submits a job to activate the campaign with the given Id. The campaign must be staged. Requires roles of CERT_ADMIN and ORG_ADMIN

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The campaign id
$ActivateCampaignOptions = Initialize-ActivateCampaignOptions -TimeZone "-05:00" # ActivateCampaignOptions | Optional. If no timezone is specified, the standard UTC timezone is used (i.e. UTC+00:00). Although this can take any timezone, the intended value is the caller's timezone. The activation time calculated from the given timezone may cause the campaign deadline time to be modified, but it will remain within the original date. The timezone must be in a valid ISO 8601 format. (optional)

# Activate a Campaign
try {
    $Result = Start-BetaCampaign -Id $Id -ActivateCampaignOptions $ActivateCampaignOptions
} catch {
    Write-Host ("Exception occurred when calling Start-BetaCampaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The campaign id | 
 **ActivateCampaignOptions** | [**ActivateCampaignOptions**](ActivateCampaignOptions.md)| Optional. If no timezone is specified, the standard UTC timezone is used (i.e. UTC+00:00). Although this can take any timezone, the intended value is the caller&#39;s timezone. The activation time calculated from the given timezone may cause the campaign deadline time to be modified, but it will remain within the original date. The timezone must be in a valid ISO 8601 format. | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-BetaCampaignRemediationScan"></a>
# **Start-BetaCampaignRemediationScan**
> SystemCollectionsHashtable Start-BetaCampaignRemediationScan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Run Campaign Remediation Scan

Kicks off remediation scan task for a certification campaign. Requires roles of CERT_ADMIN and ORG_ADMIN

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign for which remediation scan is being run.

# Run Campaign Remediation Scan
try {
    $Result = Start-BetaCampaignRemediationScan -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Start-BetaCampaignRemediationScan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign for which remediation scan is being run. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-BetaCampaignReport"></a>
# **Start-BetaCampaignReport**
> SystemCollectionsHashtable Start-BetaCampaignReport<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <PSCustomObject><br>

Run Campaign Report

Runs a report for a certification campaign. Requires the following roles: CERT_ADMIN, DASHBOARD, ORG_ADMIN and REPORT_ADMIN.

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign for which report is being run.
$Type = "CAMPAIGN_COMPOSITION_REPORT" # ReportType | The type of the report to run.

# Run Campaign Report
try {
    $Result = Start-BetaCampaignReport -Id $Id -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Start-BetaCampaignReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign for which report is being run. | 
 **Type** | [**ReportType**](ReportType.md)| The type of the report to run. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Start-BetaGenerateCampaignTemplate"></a>
# **Start-BetaGenerateCampaignTemplate**
> CampaignReference Start-BetaGenerateCampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Generate a Campaign from Template

Generates a new campaign from a campaign template. The campaign object contained in the template has special formatting applied to its name and description fields in order to determine the generated campaign's name/description. Placeholders in those fields are formatted with the current date and time upon generation. Placeholders consist of a percent sign followed by a letter indicating what should be inserted; for example, ""%Y"" will insert the current year; a campaign template named ""Campaign for %y"" would generate a campaign called ""Campaign for 2020"" (assuming the year at generation time is 2020). Valid placeholders are the date/time conversion suffix characters supported by [java.util.Formatter](https://docs.oracle.com/javase/8/docs/api/java/util/Formatter.html). Requires roles ORG_ADMIN.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The ID of the campaign template to use for generation.

# Generate a Campaign from Template
try {
    $Result = Start-BetaGenerateCampaignTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Start-BetaGenerateCampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template to use for generation. | 

### Return type

[**CampaignReference**](CampaignReference.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaCampaign"></a>
# **Update-BetaCampaign**
> Slimcampaign Update-BetaCampaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <PSCustomObject[]><br>

Update a Campaign

Allows updating individual fields on a campaign using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign template being modified.
$RequestBody =  # SystemCollectionsHashtable[] | A list of campaign update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The fields that can be patched differ based on the status of the campaign.  In the *STAGED* status, the following fields can be patched: * name * description * recommendationsEnabled * deadline * emailNotificationEnabled * autoRevokeAllowed  In the *ACTIVE* status, the following fields can be patched: * deadline 

# Update a Campaign
try {
    $Result = Update-BetaCampaign -Id $Id -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-BetaCampaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template being modified. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of campaign update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The fields that can be patched differ based on the status of the campaign.  In the *STAGED* status, the following fields can be patched: * name * description * recommendationsEnabled * deadline * emailNotificationEnabled * autoRevokeAllowed  In the *ACTIVE* status, the following fields can be patched: * deadline  | 

### Return type

[**Slimcampaign**](Slimcampaign.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

