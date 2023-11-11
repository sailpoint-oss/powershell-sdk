# PSSailpoint.PSSailpoint/Api.CertificationCampaignsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Complete-Campaign**](CertificationCampaignsApi.md#Complete-Campaign) | **POST** /campaigns/{id}/complete | Complete a Campaign
[**New-Campaign**](CertificationCampaignsApi.md#New-Campaign) | **POST** /campaigns | Create a campaign
[**New-CampaignTemplate**](CertificationCampaignsApi.md#New-CampaignTemplate) | **POST** /campaign-templates | Create a Campaign Template
[**Remove-CampaignTemplate**](CertificationCampaignsApi.md#Remove-CampaignTemplate) | **DELETE** /campaign-templates/{id} | Delete a Campaign Template
[**Remove-CampaignTemplateSchedule**](CertificationCampaignsApi.md#Remove-CampaignTemplateSchedule) | **DELETE** /campaign-templates/{id}/schedule | Deletes a Campaign Template&#39;s Schedule
[**Remove-Campaigns**](CertificationCampaignsApi.md#Remove-Campaigns) | **POST** /campaigns/delete | Deletes Campaigns
[**Get-ActiveCampaigns**](CertificationCampaignsApi.md#Get-ActiveCampaigns) | **GET** /campaigns | List Campaigns
[**Get-Campaign**](CertificationCampaignsApi.md#Get-Campaign) | **GET** /campaigns/{id} | Get a campaign
[**Get-CampaignReports**](CertificationCampaignsApi.md#Get-CampaignReports) | **GET** /campaigns/{id}/reports | Get Campaign Reports
[**Get-CampaignReportsConfig**](CertificationCampaignsApi.md#Get-CampaignReportsConfig) | **GET** /campaigns/reports-configuration | Get Campaign Reports Configuration
[**Get-CampaignTemplate**](CertificationCampaignsApi.md#Get-CampaignTemplate) | **GET** /campaign-templates/{id} | Get a Campaign Template
[**Get-CampaignTemplateSchedule**](CertificationCampaignsApi.md#Get-CampaignTemplateSchedule) | **GET** /campaign-templates/{id}/schedule | Gets a Campaign Template&#39;s Schedule
[**Get-CampaignTemplates**](CertificationCampaignsApi.md#Get-CampaignTemplates) | **GET** /campaign-templates | List Campaign Templates
[**Move-**](CertificationCampaignsApi.md#Move-) | **POST** /campaigns/{id}/reassign | Reassign Certifications
[**Update-CampaignTemplate**](CertificationCampaignsApi.md#Update-CampaignTemplate) | **PATCH** /campaign-templates/{id} | Update a Campaign Template
[**Set-CampaignReportsConfig**](CertificationCampaignsApi.md#Set-CampaignReportsConfig) | **PUT** /campaigns/reports-configuration | Set Campaign Reports Configuration
[**Set-CampaignTemplateSchedule**](CertificationCampaignsApi.md#Set-CampaignTemplateSchedule) | **PUT** /campaign-templates/{id}/schedule | Sets a Campaign Template&#39;s Schedule
[**Start-Campaign**](CertificationCampaignsApi.md#Start-Campaign) | **POST** /campaigns/{id}/activate | Activate a Campaign
[**Start-CampaignRemediationScan**](CertificationCampaignsApi.md#Start-CampaignRemediationScan) | **POST** /campaigns/{id}/run-remediation-scan | Run Campaign Remediation Scan
[**Start-CampaignReport**](CertificationCampaignsApi.md#Start-CampaignReport) | **POST** /campaigns/{id}/run-report/{type} | Run Campaign Report
[**Start-GenerateCampaignTemplate**](CertificationCampaignsApi.md#Start-GenerateCampaignTemplate) | **POST** /campaign-templates/{id}/generate | Generate a Campaign from Template
[**Update-Campaign**](CertificationCampaignsApi.md#Update-Campaign) | **PATCH** /campaigns/{id} | Update a Campaign


<a name="Complete-Campaign"></a>
# **Complete-Campaign**
> SystemCollectionsHashtable Complete-Campaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignCompleteOptions] <PSCustomObject><br>

Complete a Campaign

:::caution  This endpoint will run successfully for any campaigns that are **past due**.  This endpoint will return a content error if the campaign is **not past due**.  :::  Completes a certification campaign. This is provided to admins so that they can complete a certification even if all items have not been completed.  Requires roles of CERT_ADMIN and ORG_ADMIN 

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The campaign id
$CampaignCompleteOptions = Initialize-CampaignCompleteOptions -AutoCompleteAction "APPROVE" # CampaignCompleteOptions | Optional. Default behavior is for the campaign to auto-approve upon completion, unless autoCompleteAction=REVOKE (optional)

# Complete a Campaign
try {
    $Result = Complete-Campaign -Id $Id -CampaignCompleteOptions $CampaignCompleteOptions
} catch {
    Write-Host ("Exception occurred when calling Complete-Campaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The campaign id | 
 **CampaignCompleteOptions** | [**CampaignCompleteOptions**](CampaignCompleteOptions.md)| Optional. Default behavior is for the campaign to auto-approve upon completion, unless autoCompleteAction&#x3D;REVOKE | [optional] 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-Campaign"></a>
# **New-Campaign**
> Campaign New-Campaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Campaign] <PSCustomObject><br>

Create a campaign

Creates a new Certification Campaign with the information provided in the request body.

### Example
```powershell
$CampaignAllOfFilter = Initialize-CampaignAllOfFilter -Id "0fbe863c063c4c88a35fd7f17e8a3df5" -Type "CAMPAIGN_FILTER" -Name "Test Filter"
$CampaignAllOfSourceOwnerCampaignInfo = Initialize-CampaignAllOfSourceOwnerCampaignInfo -SourceIds "MySourceIds"

$CampaignAllOfSearchCampaignInfoReviewer = Initialize-CampaignAllOfSearchCampaignInfoReviewer -Type "GOVERNANCE_GROUP" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$AccessConstraint = Initialize-AccessConstraint -Type "ENTITLEMENT" -Ids "MyIds" -Operator "ALL"
$CampaignAllOfSearchCampaignInfo = Initialize-CampaignAllOfSearchCampaignInfo -Type "IDENTITY" -Description "Search Campaign description" -Reviewer $CampaignAllOfSearchCampaignInfoReviewer -Query "Search Campaign query description" -IdentityIds "MyIdentityIds" -AccessConstraints $AccessConstraint

$CampaignAllOfRoleCompositionCampaignInfoRemediatorRef = Initialize-CampaignAllOfRoleCompositionCampaignInfoRemediatorRef -Type "IDENTITY" -Id "2c90ad2a70ace7d50170acf22ca90010" -Name "Role Admin"
$CampaignAllOfRoleCompositionCampaignInfo = Initialize-CampaignAllOfRoleCompositionCampaignInfo -Reviewer $CampaignAllOfSearchCampaignInfoReviewer -RoleIds "MyRoleIds" -RemediatorRef $CampaignAllOfRoleCompositionCampaignInfoRemediatorRef -Query "Search Query" -Description "Role Composition Description"

$ErrorMessageDto = Initialize-ErrorMessageDto -Locale "en-US" -LocaleOrigin "DEFAULT" -Text "The request was syntactically correct but its content is semantically invalid."
$CampaignAlert = Initialize-CampaignAlert -Level "ERROR" -Localizations $ErrorMessageDto

$CampaignAllOfSourcesWithOrphanEntitlements = Initialize-CampaignAllOfSourcesWithOrphanEntitlements -Id "2c90ad2a70ace7d50170acf22ca90010" -Type "SOURCE" -Name "Source with orphan entitlements"
$Campaign = Initialize-Campaign -Id "2c9079b270a266a60170a2779fcb0007" -Name "Manager Campaign" -Description "Everyone needs to be reviewed by their manager" -Deadline (Get-Date) -Type "MANAGER" -EmailNotificationEnabled $false -AutoRevokeAllowed $false -RecommendationsEnabled $true -Status "PENDING" -CorrelatedStatus "CORRELATED" -Created (Get-Date) -Modified (Get-Date) -VarFilter $CampaignAllOfFilter -SunsetCommentsRequired $true -SourceOwnerCampaignInfo $CampaignAllOfSourceOwnerCampaignInfo -SearchCampaignInfo $CampaignAllOfSearchCampaignInfo -RoleCompositionCampaignInfo $CampaignAllOfRoleCompositionCampaignInfo -Alerts $CampaignAlert -TotalCertifications 100 -CompletedCertifications 10 -SourcesWithOrphanEntitlements $CampaignAllOfSourcesWithOrphanEntitlements -MandatoryCommentRequirement "ALL_DECISIONS" # Campaign | 

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-CampaignTemplate"></a>
# **New-CampaignTemplate**
> CampaignTemplate New-CampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignTemplate] <PSCustomObject><br>

Create a Campaign Template

Create a campaign Template based on campaign.

### Example
```powershell
$CampaignTemplateOwnerRef = Initialize-CampaignTemplateOwnerRef -Id "2c918086676d3e0601677611dbde220f" -Type "IDENTITY" -Name "Mister Manager" -Email "mr.manager@example.com"
$CampaignTemplate = Initialize-CampaignTemplate -Id "2c9079b270a266a60170a277bb960008" -Name "Manager Campaign Template" -Description "Template for the annual manager campaign." -Created (Get-Date) -Modified (Get-Date) -Scheduled $false -OwnerRef $CampaignTemplateOwnerRef -DeadlineDuration "P2W" -Campaign # CampaignTemplate | 

# Create a Campaign Template
try {
    $Result = New-CampaignTemplate -CampaignTemplate $CampaignTemplate
} catch {
    Write-Host ("Exception occurred when calling New-CampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-CampaignTemplate"></a>
# **Remove-CampaignTemplate**
> void Remove-CampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Campaign Template

Deletes a campaign template by ID.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The ID of the campaign template being deleted.

# Delete a Campaign Template
try {
    $Result = Remove-CampaignTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-CampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-CampaignTemplateSchedule"></a>
# **Remove-CampaignTemplateSchedule**
> void Remove-CampaignTemplateSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Deletes a Campaign Template's Schedule

Deletes the schedule for a campaign template. Returns a 404 if there is no schedule set.

### Example
```powershell
$Id = "04bedce387bd47b2ae1f86eb0bb36dee" # String | The ID of the campaign template whose schedule is being deleted.

# Deletes a Campaign Template's Schedule
try {
    $Result = Remove-CampaignTemplateSchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-CampaignTemplateSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Remove-Campaigns"></a>
# **Remove-Campaigns**
> SystemCollectionsHashtable Remove-Campaigns<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignsDeleteRequest] <PSCustomObject><br>

Deletes Campaigns

Deletes campaigns whose Ids are specified in the provided list of campaign Ids. Authorized callers must be an ORG_ADMIN or a CERT_ADMIN.

### Example
```powershell
$CampaignsDeleteRequest = Initialize-CampaignsDeleteRequest -Ids "MyIds" # CampaignsDeleteRequest | The ids of the campaigns to delete.

# Deletes Campaigns
try {
    $Result = Remove-Campaigns -CampaignsDeleteRequest $CampaignsDeleteRequest
} catch {
    Write-Host ("Exception occurred when calling Remove-Campaigns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CampaignsDeleteRequest** | [**CampaignsDeleteRequest**](CampaignsDeleteRequest.md)| The ids of the campaigns to delete. | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-ActiveCampaigns"></a>
# **Get-ActiveCampaigns**
> GetActiveCampaigns200ResponseInner[] Get-ActiveCampaigns<br>
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
    $Result = Get-ActiveCampaigns -Detail $Detail -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-ActiveCampaigns: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-Campaign"></a>
# **Get-Campaign**
> SlimCampaign Get-Campaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a campaign

Retrieves information for an existing campaign using the campaign's ID. Authorized callers must be a reviewer for this campaign, an ORG_ADMIN, or a CERT_ADMIN.

### Example
```powershell
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-CampaignReports"></a>
# **Get-CampaignReports**
> CampaignReport[] Get-CampaignReports<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Campaign Reports

Fetches all reports for a certification campaign by campaign ID. Requires roles of CERT_ADMIN, DASHBOARD, ORG_ADMIN and REPORT_ADMIN

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign for which reports are being fetched.

# Get Campaign Reports
try {
    $Result = Get-CampaignReports -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CampaignReports: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-CampaignReportsConfig"></a>
# **Get-CampaignReportsConfig**
> CampaignReportsConfig Get-CampaignReportsConfig<br>

Get Campaign Reports Configuration

Fetches configuration for campaign reports. Currently it includes only one element - identity attributes defined as custom report columns. Requires roles of CERT_ADMIN and ORG_ADMIN.

### Example
```powershell

# Get Campaign Reports Configuration
try {
    $Result = Get-CampaignReportsConfig
} catch {
    Write-Host ("Exception occurred when calling Get-CampaignReportsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-CampaignTemplate"></a>
# **Get-CampaignTemplate**
> CampaignTemplate Get-CampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get a Campaign Template

Fetches a campaign template by ID.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The desired campaign template's ID.

# Get a Campaign Template
try {
    $Result = Get-CampaignTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-CampaignTemplateSchedule"></a>
# **Get-CampaignTemplateSchedule**
> Schedule Get-CampaignTemplateSchedule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Gets a Campaign Template's Schedule

Gets the schedule for a campaign template. Returns a 404 if there is no schedule set.

### Example
```powershell
$Id = "04bedce387bd47b2ae1f86eb0bb36dee" # String | The ID of the campaign template whose schedule is being fetched.

# Gets a Campaign Template's Schedule
try {
    $Result = Get-CampaignTemplateSchedule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-CampaignTemplateSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Get-CampaignTemplates"></a>
# **Get-CampaignTemplates**
> CampaignTemplate[] Get-CampaignTemplates<br>
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
    $Result = Get-CampaignTemplates -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-CampaignTemplates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Move-"></a>
# **Move-**
> CertificationTask Move-<br>
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
    $Result = Move- -Id $Id -AdminReviewReassign $AdminReviewReassign
} catch {
    Write-Host ("Exception occurred when calling Move-: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-CampaignTemplate"></a>
# **Update-CampaignTemplate**
> CampaignTemplate Update-CampaignTemplate<br>
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
    $Result = Update-CampaignTemplate -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-CampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-CampaignReportsConfig"></a>
# **Set-CampaignReportsConfig**
> CampaignReportsConfig Set-CampaignReportsConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CampaignReportsConfig] <PSCustomObject><br>

Set Campaign Reports Configuration

Overwrites configuration for campaign reports. Requires roles CERT_ADMIN and ORG_ADMIN.

### Example
```powershell
$CampaignReportsConfig = Initialize-CampaignReportsConfig -IdentityAttributeColumns "MyIdentityAttributeColumns" # CampaignReportsConfig | Campaign Report Configuration

# Set Campaign Reports Configuration
try {
    $Result = Set-CampaignReportsConfig -CampaignReportsConfig $CampaignReportsConfig
} catch {
    Write-Host ("Exception occurred when calling Set-CampaignReportsConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Set-CampaignTemplateSchedule"></a>
# **Set-CampaignTemplateSchedule**
> void Set-CampaignTemplateSchedule<br>
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
    $Result = Set-CampaignTemplateSchedule -Id $Id -Schedule $Schedule
} catch {
    Write-Host ("Exception occurred when calling Set-CampaignTemplateSchedule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Start-Campaign"></a>
# **Start-Campaign**
> SystemCollectionsHashtable Start-Campaign<br>
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
    $Result = Start-Campaign -Id $Id -ActivateCampaignOptions $ActivateCampaignOptions
} catch {
    Write-Host ("Exception occurred when calling Start-Campaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Start-CampaignRemediationScan"></a>
# **Start-CampaignRemediationScan**
> SystemCollectionsHashtable Start-CampaignRemediationScan<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Run Campaign Remediation Scan

Kicks off remediation scan task for a certification campaign. Requires roles of CERT_ADMIN and ORG_ADMIN

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign for which remediation scan is being run.

# Run Campaign Remediation Scan
try {
    $Result = Start-CampaignRemediationScan -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Start-CampaignRemediationScan: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Start-CampaignReport"></a>
# **Start-CampaignReport**
> SystemCollectionsHashtable Start-CampaignReport<br>
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
    $Result = Start-CampaignReport -Id $Id -Type $Type
} catch {
    Write-Host ("Exception occurred when calling Start-CampaignReport: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Start-GenerateCampaignTemplate"></a>
# **Start-GenerateCampaignTemplate**
> CampaignReference Start-GenerateCampaignTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Generate a Campaign from Template

Generates a new campaign from a campaign template. The campaign object contained in the template has special formatting applied to its name and description fields in order to determine the generated campaign's name/description. Placeholders in those fields are formatted with the current date and time upon generation. Placeholders consist of a percent sign followed by a letter indicating what should be inserted; for example, ""%Y"" will insert the current year; a campaign template named ""Campaign for %y"" would generate a campaign called ""Campaign for 2020"" (assuming the year at generation time is 2020). Valid placeholders are the date/time conversion suffix characters supported by [java.util.Formatter](https://docs.oracle.com/javase/8/docs/api/java/util/Formatter.html). Requires roles ORG_ADMIN.

### Example
```powershell
$Id = "2c9180835d191a86015d28455b4a2329" # String | The ID of the campaign template to use for generation.

# Generate a Campaign from Template
try {
    $Result = Start-GenerateCampaignTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Start-GenerateCampaignTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a name="Update-Campaign"></a>
# **Update-Campaign**
> SlimCampaign Update-Campaign<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update a Campaign

Allows updating individual fields on a campaign using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Example
```powershell
$Id = "2c91808571bcfcf80171c23e4b4221fc" # String | The ID of the campaign template being modified.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of campaign update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The fields that can be patched differ based on the status of the campaign.  In the *STAGED* status, the following fields can be patched: * name * description * recommendationsEnabled * deadline * emailNotificationEnabled * autoRevokeAllowed  In the *ACTIVE* status, the following fields can be patched: * deadline 

# Update a Campaign
try {
    $Result = Update-Campaign -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-Campaign: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of the campaign template being modified. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of campaign update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The fields that can be patched differ based on the status of the campaign.  In the *STAGED* status, the following fields can be patched: * name * description * recommendationsEnabled * deadline * emailNotificationEnabled * autoRevokeAllowed  In the *ACTIVE* status, the following fields can be patched: * deadline  | 

### Return type

[**SlimCampaign**](SlimCampaign.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

