# PSSailpoint.PSSailpoint/Api.SODPolicyApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-SodPolicy**](SODPolicyApi.md#New-SodPolicy) | **POST** /sod-policies | Create SOD policy
[**Get-SodPolicies**](SODPolicyApi.md#Get-SodPolicies) | **GET** /sod-policies | List SOD policies


<a name="New-SodPolicy"></a>
# **New-SodPolicy**
> SodPolicy New-SodPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SodPolicy] <PSCustomObject><br>

Create SOD policy

This creates both General and Conflicting Access Based policy, with a limit of 50 entitlements for each (left & right) criteria for Conflicting Access Based SOD policy. Requires role of ORG_ADMIN.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$BaseReferenceDto = Initialize-BaseReferenceDto -Type "ACCOUNT_CORRELATION_CONFIG" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"

$ViolationOwnerAssignmentConfig = Initialize-ViolationOwnerAssignmentConfig -AssignmentRule "MANAGER" -OwnerRef $BaseReferenceDto

$AccessCriteriaCriteriaListInner = Initialize-AccessCriteriaCriteriaListInner -Type "ENTITLEMENT" -Id "2c91808568c529c60168cca6f90c1313" -Name "Administrator"
$AccessCriteria = Initialize-AccessCriteria -Name "money-in" -CriteriaList $AccessCriteriaCriteriaListInner

$ConflictingAccessCriteria = Initialize-ConflictingAccessCriteria -LeftCriteria $AccessCriteria -RightCriteria $AccessCriteria

$SodPolicy = Initialize-SodPolicy -Id "0f11f2a4-7c94-4bf3-a2bd-742580fe3bde" -Name "policy-xyz" -Created (Get-Date) -Modified (Get-Date) -Description "This policy ensures compliance of xyz" -OwnerRef $BaseReferenceDto -ExternalPolicyReference "XYZ policy" -PolicyQuery "@access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdg) AND @access(id:0f11f2a4-7c94-4bf3-a2bd-742580fe3bdf)" -CompensatingControls "Have a manager review the transaction decisions for their "out of compliance" employee" -CorrectionAdvice "Based on the role of the employee, managers should remove access that is not required for their job function." -State "ENFORCED" -Tags "MyTags" -CreatorId "0f11f2a47c944bf3a2bd742580fe3bde" -ModifierId "0f11f2a47c944bf3a2bd742580fe3bde" -ViolationOwnerAssignmentConfig $ViolationOwnerAssignmentConfig -Scheduled $true -Type "GENERAL" -ConflictingAccessCriteria $ConflictingAccessCriteria # SodPolicy | 

# Create SOD policy
try {
    $Result = New-SodPolicy -SodPolicy $SodPolicy
} catch {
    Write-Host ("Exception occurred when calling New-SodPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SodPolicy** | [**SodPolicy**](SodPolicy.md)|  | 

### Return type

[**SodPolicy**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-SodPolicies"></a>
# **Get-SodPolicies**
> SodPolicy[] Get-SodPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List SOD policies

This gets list of all SOD policies. Requires role of ORG_ADMIN

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "id eq "bc693f07e7b645539626c25954c58554"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **name**: *eq*  **state**: *eq* (optional)

# List SOD policies
try {
    $Result = Get-SodPolicies -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-SodPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **name**: *eq*  **state**: *eq* | [optional] 

### Return type

[**SodPolicy[]**](SodPolicy.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

