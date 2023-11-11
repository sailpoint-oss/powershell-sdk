# PSSailpointBeta.PSSailpointBeta/Api.BetaIdentityProfilesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaIdentityProfile**](BetaIdentityProfilesApi.md#New-BetaIdentityProfile) | **POST** /identity-profiles | Create an Identity Profile
[**Remove-BetaIdentityProfile**](BetaIdentityProfilesApi.md#Remove-BetaIdentityProfile) | **DELETE** /identity-profiles/{identity-profile-id} | Delete an Identity Profile
[**Remove-BetaIdentityProfiles**](BetaIdentityProfilesApi.md#Remove-BetaIdentityProfiles) | **POST** /identity-profiles/bulk-delete | Delete Identity Profiles
[**Export-BetaIdentityProfiles**](BetaIdentityProfilesApi.md#Export-BetaIdentityProfiles) | **GET** /identity-profiles/export | Export Identity Profiles
[**New-BetaIdentityPreview**](BetaIdentityProfilesApi.md#New-BetaIdentityPreview) | **POST** /identity-profiles/identity-preview | Generate Identity Profile Preview
[**Get-BetaDefaultIdentityAttributeConfig**](BetaIdentityProfilesApi.md#Get-BetaDefaultIdentityAttributeConfig) | **GET** /identity-profiles/{identity-profile-id}/default-identity-attribute-config | Default identity attribute config
[**Get-BetaIdentityProfile**](BetaIdentityProfilesApi.md#Get-BetaIdentityProfile) | **GET** /identity-profiles/{identity-profile-id} | Gets a single Identity Profile
[**Import-BetaIdentityProfiles**](BetaIdentityProfilesApi.md#Import-BetaIdentityProfiles) | **POST** /identity-profiles/import | Import Identity Profiles
[**Get-BetaIdentityProfiles**](BetaIdentityProfilesApi.md#Get-BetaIdentityProfiles) | **GET** /identity-profiles | Identity Profiles list
[**Sync-BetaIdentityProfile**](BetaIdentityProfilesApi.md#Sync-BetaIdentityProfile) | **POST** /identity-profiles/{identity-profile-id}/process-identities | Process identities under profile
[**Update-BetaIdentityProfile**](BetaIdentityProfilesApi.md#Update-BetaIdentityProfile) | **PATCH** /identity-profiles/{identity-profile-id} | Update the Identity Profile


<a name="New-BetaIdentityProfile"></a>
# **New-BetaIdentityProfile**
> IdentityProfile New-BetaIdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfile] <PSCustomObject><br>

Create an Identity Profile

This creates an Identity Profile A token with ORG_ADMIN authority is required to call this API to create an Identity Profile.

### Example
```powershell
$IdentityProfileAllOfOwner = Initialize-IdentityProfileAllOfOwner -Type "IDENTITY" -Id "2c9180835d191a86015d28455b4b232a" -Name "William Wilson"
$IdentityProfileAllOfAuthoritativeSource = Initialize-IdentityProfileAllOfAuthoritativeSource -Type "SOURCE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"

$TransformDefinition = Initialize-TransformDefinition -Type "accountAttribute" -Attributes @{ key_example =  }
$IdentityAttributeTransform = Initialize-IdentityAttributeTransform -IdentityAttributeName "email" -TransformDefinition $TransformDefinition

$IdentityAttributeConfig = Initialize-IdentityAttributeConfig -Enabled $true -AttributeTransforms $IdentityAttributeTransform

$IdentityExceptionReportReference = Initialize-IdentityExceptionReportReference -TaskResultId "MyTaskResultId" -ReportName "My annual report"
$IdentityProfile = Initialize-IdentityProfile -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "My custom flat file profile" -Owner $IdentityProfileAllOfOwner -Priority 10 -AuthoritativeSource $IdentityProfileAllOfAuthoritativeSource -IdentityRefreshRequired $true -IdentityCount 8 -IdentityAttributeConfig $IdentityAttributeConfig -IdentityExceptionReportReference $IdentityExceptionReportReference -HasTimeBasedAttr $true # IdentityProfile | 

# Create an Identity Profile
try {
    $Result = New-BetaIdentityProfile -IdentityProfile $IdentityProfile
} catch {
    Write-Host ("Exception occurred when calling New-BetaIdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaIdentityProfile"></a>
# **Remove-BetaIdentityProfile**
> TaskResultSimplified Remove-BetaIdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Delete an Identity Profile

This deletes an Identity Profile based on ID.  On success, this endpoint will return a reference to the bulk delete task result.  A token with ORG_ADMIN authority is required to call this API.  The following rights are required to access this endpoint: idn:identity-profile:delete

### Example
```powershell
$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID.

# Delete an Identity Profile
try {
    $Result = Remove-BetaIdentityProfile -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaIdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaIdentityProfiles"></a>
# **Remove-BetaIdentityProfiles**
> TaskResultSimplified Remove-BetaIdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <String[]><br>

Delete Identity Profiles

This deletes multiple Identity Profiles via a list of supplied IDs.  On success, this endpoint will return a reference to the bulk delete task result.  A token with ORG_ADMIN authority is required to call this API.  The following rights are required to access this endpoint: idn:identity-profile:delete

### Example
```powershell
$RequestBody = "MyRequestBody" # String[] | Identity Profile bulk delete request body.

# Delete Identity Profiles
try {
    $Result = Remove-BetaIdentityProfiles -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaIdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Export-BetaIdentityProfiles"></a>
# **Export-BetaIdentityProfiles**
> IdentityProfileExportedObject[] Export-BetaIdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Export Identity Profiles

This exports existing identity profiles in the format specified by the sp-config service.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq 8c190e6787aa4ed9a90bd9d5344523fb" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, ne*  **name**: *eq, ne*  **priority**: *eq, ne* (optional)
$Sorters = "name,-priority" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, priority** (optional)

# Export Identity Profiles
try {
    $Result = Export-BetaIdentityProfiles -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Export-BetaIdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaIdentityPreview"></a>
# **New-BetaIdentityPreview**
> IdentityPreviewResponse New-BetaIdentityPreview<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityPreviewRequest] <PSCustomObject><br>

Generate Identity Profile Preview

This generates a non-persisted IdentityDetails object that will represent as the preview of the identities attribute when the given policy's attribute config is applied. A token with ORG_ADMIN authority is required to call this API to generate an identity preview.

### Example
```powershell
$TransformDefinition = Initialize-TransformDefinition -Type "accountAttribute" -Attributes @{ key_example =  }
$IdentityAttributeTransform = Initialize-IdentityAttributeTransform -IdentityAttributeName "email" -TransformDefinition $TransformDefinition

$IdentityAttributeConfig = Initialize-IdentityAttributeConfig -Enabled $true -AttributeTransforms $IdentityAttributeTransform

$IdentityPreviewRequest = Initialize-IdentityPreviewRequest -IdentityId "MyIdentityId" -IdentityAttributeConfig $IdentityAttributeConfig # IdentityPreviewRequest | Identity Preview request body.

# Generate Identity Profile Preview
try {
    $Result = New-BetaIdentityPreview -IdentityPreviewRequest $IdentityPreviewRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaIdentityPreview: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaDefaultIdentityAttributeConfig"></a>
# **Get-BetaDefaultIdentityAttributeConfig**
> IdentityAttributeConfig Get-BetaDefaultIdentityAttributeConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Default identity attribute config

This returns the default identity attribute config A token with ORG_ADMIN authority is required to call this API to get the default identity attribute config.

### Example
```powershell
$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID

# Default identity attribute config
try {
    $Result = Get-BetaDefaultIdentityAttributeConfig -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaDefaultIdentityAttributeConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| The Identity Profile ID | 

### Return type

[**IdentityAttributeConfig**](IdentityAttributeConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaIdentityProfile"></a>
# **Get-BetaIdentityProfile**
> IdentityProfile Get-BetaIdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Gets a single Identity Profile

This returns a single Identity Profile based on ID. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID

# Gets a single Identity Profile
try {
    $Result = Get-BetaIdentityProfile -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaIdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| The Identity Profile ID | 

### Return type

[**IdentityProfile**](IdentityProfile.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Import-BetaIdentityProfiles"></a>
# **Import-BetaIdentityProfiles**
> ObjectImportResult Import-BetaIdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileExportedObject] <PSCustomObject[]><br>

Import Identity Profiles

This imports previously exported identity profiles.

### Example
```powershell
$SelfImportExportDto = Initialize-SelfImportExportDto -Type "ACCESS_PROFILE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"

$IdentityProfileAllOfOwner = Initialize-IdentityProfileAllOfOwner -Type "IDENTITY" -Id "2c9180835d191a86015d28455b4b232a" -Name "William Wilson"
$IdentityProfile1AllOfAuthoritativeSource = Initialize-IdentityProfile1AllOfAuthoritativeSource -Type "SOURCE" -Id "2c9180835d191a86015d28455b4b232a" -Name "HR Active Directory"

$TransformDefinition1AttributesValue = Initialize-TransformDefinition1AttributesValue 
$TransformDefinition1 = Initialize-TransformDefinition1 -Type "accountAttribute" -Attributes @{ key_example = $TransformDefinition1AttributesValue }

$IdentityAttributeTransform1 = Initialize-IdentityAttributeTransform1 -IdentityAttributeName "email" -TransformDefinition $TransformDefinition1

$IdentityAttributeConfig1 = Initialize-IdentityAttributeConfig1 -Enabled $true -AttributeTransforms $IdentityAttributeTransform1

$IdentityExceptionReportReference1 = Initialize-IdentityExceptionReportReference1 -TaskResultId "2b838de9-db9b-abcf-e646-d4f274ad4238" -ReportName "My annual report"
$IdentityProfile1 = Initialize-IdentityProfile1 -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Description "My custom flat file profile" -Owner $IdentityProfileAllOfOwner -Priority 10 -AuthoritativeSource $IdentityProfile1AllOfAuthoritativeSource -IdentityRefreshRequired $true -IdentityCount 8 -IdentityAttributeConfig $IdentityAttributeConfig1 -IdentityExceptionReportReference $IdentityExceptionReportReference1 -HasTimeBasedAttr $true

$IdentityProfileExportedObject = Initialize-IdentityProfileExportedObject -Version 1 -Self $SelfImportExportDto -Object $IdentityProfile1 # IdentityProfileExportedObject[] | Previously exported Identity Profiles.

# Import Identity Profiles
try {
    $Result = Import-BetaIdentityProfiles -IdentityProfileExportedObject $IdentityProfileExportedObject
} catch {
    Write-Host ("Exception occurred when calling Import-BetaIdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaIdentityProfiles"></a>
# **Get-BetaIdentityProfiles**
> IdentityProfile[] Get-BetaIdentityProfiles<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Identity Profiles list

This returns a list of Identity Profiles based on the specified query parameters. A token with ORG_ADMIN or API authority is required to call this API to get a list of Identity Profiles.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq 8c190e6787aa4ed9a90bd9d5344523fb" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, ne, co, ge, gt, in, le, lt, isnull, sw*  **name**: *eq, ne, co, in, le, lt, isnull, sw*  **priority**: *eq, ne* (optional)
$Sorters = "name,-priority" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, priority, created, modified, owner.id, owner.name** (optional)

# Identity Profiles list
try {
    $Result = Get-BetaIdentityProfiles -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaIdentityProfiles: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, ne, co, ge, gt, in, le, lt, isnull, sw*  **name**: *eq, ne, co, in, le, lt, isnull, sw*  **priority**: *eq, ne* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, priority, created, modified, owner.id, owner.name** | [optional] 

### Return type

[**IdentityProfile[]**](IdentityProfile.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Sync-BetaIdentityProfile"></a>
# **Sync-BetaIdentityProfile**
> SystemCollectionsHashtable Sync-BetaIdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>

Process identities under profile

Process identities under the profile  A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID to be processed

# Process identities under profile
try {
    $Result = Sync-BetaIdentityProfile -IdentityProfileId $IdentityProfileId
} catch {
    Write-Host ("Exception occurred when calling Sync-BetaIdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaIdentityProfile"></a>
# **Update-BetaIdentityProfile**
> IdentityProfile Update-BetaIdentityProfile<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update the Identity Profile

This updates the specified Identity Profile. A token with ORG_ADMIN authority is required to call this API to update the Identity Profile. Some fields of the Schema cannot be updated. These fields are listed below. * id * name * created * modified

### Example
```powershell
$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The Identity Profile ID
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of Identity Profile update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Update the Identity Profile
try {
    $Result = Update-BetaIdentityProfile -IdentityProfileId $IdentityProfileId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaIdentityProfile: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

