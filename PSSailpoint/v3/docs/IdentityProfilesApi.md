# PSSailpoint.V3.PSSailpoint.V3\Api.IdentityProfilesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-IdentityProfile**](IdentityProfilesApi.md#New-IdentityProfile) | **POST** /identity-profiles | Create an Identity Profile
[**Remove-IdentityProfile**](IdentityProfilesApi.md#Remove-IdentityProfile) | **DELETE** /identity-profiles/{identity-profile-id} | Delete an Identity Profile
[**Remove-IdentityProfiles**](IdentityProfilesApi.md#Remove-IdentityProfiles) | **POST** /identity-profiles/bulk-delete | Delete Identity Profiles
[**Export-IdentityProfiles**](IdentityProfilesApi.md#Export-IdentityProfiles) | **GET** /identity-profiles/export | Export Identity Profiles
[**Get-DefaultIdentityAttributeConfig**](IdentityProfilesApi.md#Get-DefaultIdentityAttributeConfig) | **GET** /identity-profiles/{identity-profile-id}/default-identity-attribute-config | Get default Identity Attribute Config
[**Get-IdentityProfile**](IdentityProfilesApi.md#Get-IdentityProfile) | **GET** /identity-profiles/{identity-profile-id} | Get single Identity Profile
[**Import-IdentityProfiles**](IdentityProfilesApi.md#Import-IdentityProfiles) | **POST** /identity-profiles/import | Import Identity Profiles
[**Get-IdentityProfiles**](IdentityProfilesApi.md#Get-IdentityProfiles) | **GET** /identity-profiles | Identity Profiles List
[**Show-IdentityPreview**](IdentityProfilesApi.md#Show-IdentityPreview) | **POST** /identity-profiles/identity-preview | Generate Identity Profile Preview
[**Sync-IdentityProfile**](IdentityProfilesApi.md#Sync-IdentityProfile) | **POST** /identity-profiles/{identity-profile-id}/process-identities | Process identities under profile
[**Update-IdentityProfile**](IdentityProfilesApi.md#Update-IdentityProfile) | **PATCH** /identity-profiles/{identity-profile-id} | Update the Identity Profile


<a id="New-IdentityProfile"></a>
# **New-IdentityProfile**
> IdentityProfile New-IdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfile] <PSCustomObject><br>

Create an Identity Profile

This creates an Identity Profile.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileAllOfOwner = Initialize-IdentityProfileAllOfOwner -Type "IDENTITY" -Id "2c9180835d191a86015d28455b4b232a" -Name "William Wilson"
$IdentityProfileAllOfAuthoritativeSource = Initialize-IdentityProfileAllOfAuthoritativeSource -Type "SOURCE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"

$TransformDefinition = Initialize-TransformDefinition -Type "accountAttribute" -Attributes @{ key_example =  }
$IdentityAttributeTransform = Initialize-IdentityAttributeTransform -IdentityAttributeName "email" -TransformDefinition $TransformDefinition

$IdentityAttributeConfig = Initialize-IdentityAttributeConfig -Enabled $true -AttributeTransforms $IdentityAttributeTransform

$IdentityExceptionReportReference = Initialize-IdentityExceptionReportReference -TaskResultId "2b838de9-db9b-abcf-e646-d4f274ad4238" -ReportName "My annual report"
$IdentityProfile = Initialize-IdentityProfile -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "My custom flat file profile" -Owner $IdentityProfileAllOfOwner -Priority 10 -AuthoritativeSource $IdentityProfileAllOfAuthoritativeSource -IdentityRefreshRequired $true -IdentityCount 8 -IdentityAttributeConfig $IdentityAttributeConfig -IdentityExceptionReportReference $IdentityExceptionReportReference -HasTimeBasedAttr $true # IdentityProfile | 

# Create an Identity Profile
try {
    $Result = New-IdentityProfile -IdentityProfile $IdentityProfile
} catch {
    Write-Host ("Exception occurred when calling New-IdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfile** | [**IdentityProfile**](IdentityProfile.md)|  | 

### Return type

[**IdentityProfile**](IdentityProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-IdentityProfile"></a>
# **Remove-IdentityProfile**
> TaskResultSimplified Remove-IdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Delete an Identity Profile

This deletes an Identity Profile based on ID.  On success, this endpoint will return a reference to the bulk delete task result.       The following rights are required to access this endpoint: idn:identity-profile:delete

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID.

# Delete an Identity Profile
try {
    $Result = Remove-IdentityProfile -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Remove-IdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| The Identity Profile ID. | 

### Return type

[**TaskResultSimplified**](TaskResultSimplified.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-IdentityProfiles"></a>
# **Remove-IdentityProfiles**
> TaskResultSimplified Remove-IdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete Identity Profiles

This deletes multiple Identity Profiles via a list of supplied IDs.  On success, this endpoint will return a reference to the bulk delete task result.  The following rights are required to access this endpoint: idn:identity-profile:delete

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$RequestBody = "MyRequestBody" # String[] | Identity Profile bulk delete request body.

# Delete Identity Profiles
try {
    $Result = Remove-IdentityProfiles -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-IdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **RequestBody** | [**String[]**](String.md)| Identity Profile bulk delete request body. | 

### Return type

[**TaskResultSimplified**](TaskResultSimplified.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Export-IdentityProfiles"></a>
# **Export-IdentityProfiles**
> IdentityProfileExportedObject[] Export-IdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Export Identity Profiles

This exports existing identity profiles in the format specified by the sp-config service.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq "ef38f94347e94562b5bb8424a56397d8"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, ne*  **name**: *eq, ne*  **priority**: *eq, ne* (optional)
$Sorters = "id,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, priority** (optional)

# Export Identity Profiles
try {
    $Result = Export-IdentityProfiles -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Export-IdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, ne*  **name**: *eq, ne*  **priority**: *eq, ne* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, priority** | [optional] 

### Return type

[**IdentityProfileExportedObject[]**](IdentityProfileExportedObject.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-DefaultIdentityAttributeConfig"></a>
# **Get-DefaultIdentityAttributeConfig**
> IdentityAttributeConfig Get-DefaultIdentityAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Get default Identity Attribute Config

This returns the default identity attribute config.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | The Identity Profile ID.

# Get default Identity Attribute Config
try {
    $Result = Get-DefaultIdentityAttributeConfig -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Get-DefaultIdentityAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| The Identity Profile ID. | 

### Return type

[**IdentityAttributeConfig**](IdentityAttributeConfig.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdentityProfile"></a>
# **Get-IdentityProfile**
> IdentityProfile Get-IdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Get single Identity Profile

This returns a single Identity Profile based on ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | The Identity Profile ID.

# Get single Identity Profile
try {
    $Result = Get-IdentityProfile -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Get-IdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| The Identity Profile ID. | 

### Return type

[**IdentityProfile**](IdentityProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Import-IdentityProfiles"></a>
# **Import-IdentityProfiles**
> ObjectImportResult Import-IdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileExportedObject] <PSCustomObject[]><br>

Import Identity Profiles

This imports previously exported identity profiles.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileExportedObjectSelf = Initialize-IdentityProfileExportedObjectSelf -Type "ACCESS_PROFILE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"

$IdentityProfileAllOfOwner = Initialize-IdentityProfileAllOfOwner -Type "IDENTITY" -Id "2c9180835d191a86015d28455b4b232a" -Name "William Wilson"
$IdentityProfileAllOfAuthoritativeSource = Initialize-IdentityProfileAllOfAuthoritativeSource -Type "SOURCE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"

$TransformDefinition = Initialize-TransformDefinition -Type "accountAttribute" -Attributes @{ key_example =  }
$IdentityAttributeTransform = Initialize-IdentityAttributeTransform -IdentityAttributeName "email" -TransformDefinition $TransformDefinition

$IdentityAttributeConfig = Initialize-IdentityAttributeConfig -Enabled $true -AttributeTransforms $IdentityAttributeTransform

$IdentityExceptionReportReference = Initialize-IdentityExceptionReportReference -TaskResultId "2b838de9-db9b-abcf-e646-d4f274ad4238" -ReportName "My annual report"
$IdentityProfile = Initialize-IdentityProfile -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "My custom flat file profile" -Owner $IdentityProfileAllOfOwner -Priority 10 -AuthoritativeSource $IdentityProfileAllOfAuthoritativeSource -IdentityRefreshRequired $true -IdentityCount 8 -IdentityAttributeConfig $IdentityAttributeConfig -IdentityExceptionReportReference $IdentityExceptionReportReference -HasTimeBasedAttr $true

$IdentityProfileExportedObject = Initialize-IdentityProfileExportedObject -Version 1 -Self $IdentityProfileExportedObjectSelf -Object $IdentityProfile # IdentityProfileExportedObject[] | Previously exported Identity Profiles.

# Import Identity Profiles
try {
    $Result = Import-IdentityProfiles -IdentityProfileExportedObject $IdentityProfileExportedObject
} catch {
    Write-Host ("Exception occurred when calling Import-IdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileExportedObject** | [**IdentityProfileExportedObject[]**](IdentityProfileExportedObject.md)| Previously exported Identity Profiles. | 

### Return type

[**ObjectImportResult**](ObjectImportResult.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-IdentityProfiles"></a>
# **Get-IdentityProfiles**
> IdentityProfile[] Get-IdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Identity Profiles List

This returns a list of Identity Profiles based on the specified query parameters.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: applicationAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq "ef38f94347e94562b5bb8424a56397d8"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, ne, ge, gt, in, le, lt, isnull, sw*  **name**: *eq, ne, ge, gt, in, le, lt, isnull, sw*  **priority**: *eq, ne* (optional)
$Sorters = "id,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, priority, created, modified, owner.id, owner.name** (optional)

# Identity Profiles List
try {
    $Result = Get-IdentityProfiles -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-IdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, ne, ge, gt, in, le, lt, isnull, sw*  **name**: *eq, ne, ge, gt, in, le, lt, isnull, sw*  **priority**: *eq, ne* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, priority, created, modified, owner.id, owner.name** | [optional] 

### Return type

[**IdentityProfile[]**](IdentityProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Show-IdentityPreview"></a>
# **Show-IdentityPreview**
> IdentityPreviewResponse Show-IdentityPreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityPreviewRequest] <PSCustomObject><br>

Generate Identity Profile Preview

Use this API to generate a non-persisted preview of the identity object after applying `IdentityAttributeConfig` sent in request body. This API only allows `accountAttribute`, `reference` and `rule` transform types in the `IdentityAttributeConfig` sent in the request body.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TransformDefinition = Initialize-TransformDefinition -Type "accountAttribute" -Attributes @{ key_example =  }
$IdentityAttributeTransform = Initialize-IdentityAttributeTransform -IdentityAttributeName "email" -TransformDefinition $TransformDefinition

$IdentityAttributeConfig = Initialize-IdentityAttributeConfig -Enabled $true -AttributeTransforms $IdentityAttributeTransform

$IdentityPreviewRequest = Initialize-IdentityPreviewRequest -IdentityId "MyIdentityId" -IdentityAttributeConfig $IdentityAttributeConfig # IdentityPreviewRequest | Identity Preview request body.

# Generate Identity Profile Preview
try {
    $Result = Show-IdentityPreview -IdentityPreviewRequest $IdentityPreviewRequest
} catch {
    Write-Host ("Exception occurred when calling Show-IdentityPreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityPreviewRequest** | [**IdentityPreviewRequest**](IdentityPreviewRequest.md)| Identity Preview request body. | 

### Return type

[**IdentityPreviewResponse**](IdentityPreviewResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Sync-IdentityProfile"></a>
# **Sync-IdentityProfile**
> SystemCollectionsHashtable Sync-IdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Process identities under profile

Process identities under the profile This operation should not be used to schedule your own identity processing or to perform system wide identity refreshes. The system will use a combination of [event-based processing](https://documentation.sailpoint.com/saas/help/setup/identity_processing.html?h=process#event-based-processing) and [scheduled processing](https://documentation.sailpoint.com/saas/help/setup/identity_processing.html?h=process#scheduled-processing) that runs every day at 8:00 AM and 8:00 PM in the tenant's timezone to keep your identities synchronized.  This should only be run on identity profiles that have the `identityRefreshRequired` attribute set to `true`. If `identityRefreshRequired` is false, then there is no benefit to running this operation. Typically, this operation is performed when a change is made to the identity profile or its related lifecycle states that requires a refresh. This operation will perform the following activities on all identities under the identity profile. 1. Updates identity attribute according to the identity profile mappings. 2. Determines the identity's correct manager through manager correlation. 3. Updates the identity's access according to their assigned lifecycle state. 4. Updates the identity's access based on role assignment criteria.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID to be processed

# Process identities under profile
try {
    $Result = Sync-IdentityProfile -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Sync-IdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| The Identity Profile ID to be processed | 

### Return type

[**SystemCollectionsHashtable**](SystemCollectionsHashtable.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-IdentityProfile"></a>
# **Update-IdentityProfile**
> IdentityProfile Update-IdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update the Identity Profile

This updates the specified Identity Profile.     Some fields of the Schema cannot be updated. These fields are listed below: * id * name * created * modified * identityCount * identityRefreshRequired * Authoritative Source and Identity Attribute Configuration cannot be modified at once.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of Identity Profile update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Update the Identity Profile
try {
    $Result = Update-IdentityProfile -IdentityProfileId $IdentityProfileId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-IdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| The Identity Profile ID | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of Identity Profile update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. | 

### Return type

[**IdentityProfile**](IdentityProfile.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

