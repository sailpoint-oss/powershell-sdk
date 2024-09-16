# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024SODViolationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Start-V2024PredictSodViolations**](V2024SODViolationsApi.md#Start-V2024PredictSodViolations) | **POST** /sod-violations/predict | Predict SOD violations for identity.
[**Start-V2024ViolationCheck**](V2024SODViolationsApi.md#Start-V2024ViolationCheck) | **POST** /sod-violations/check | Check SOD violations


<a id="Start-V2024PredictSodViolations"></a>
# **Start-V2024PredictSodViolations**
> ViolationPrediction Start-V2024PredictSodViolations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityWithNewAccess] <PSCustomObject><br>

Predict SOD violations for identity.

This API is used to check if granting some additional accesses would cause the subject to be in violation of any SOD policies. Returns the violations that would be caused.  A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityWithNewAccessAccessRefsInner = Initialize-IdentityWithNewAccessAccessRefsInner -Type "ENTITLEMENT" -Id "2c91809773dee32014e13e122092014e" -Name "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local"
$IdentityWithNewAccess = Initialize-IdentityWithNewAccess -IdentityId "2c91808568c529c60168cca6f90c1313" -AccessRefs $IdentityWithNewAccessAccessRefsInner # IdentityWithNewAccess | 

# Predict SOD violations for identity.
try {
    $Result = Start-V2024PredictSodViolations -IdentityWithNewAccess $IdentityWithNewAccess
} catch {
    Write-Host ("Exception occurred when calling Start-V2024PredictSodViolations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityWithNewAccess** | [**IdentityWithNewAccess**](IdentityWithNewAccess.md)|  | 

### Return type

[**ViolationPrediction**](ViolationPrediction.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Start-V2024ViolationCheck"></a>
# **Start-V2024ViolationCheck**
> SodViolationCheck Start-V2024ViolationCheck<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityWithNewAccess1] <PSCustomObject><br>

Check SOD violations

This API initiates a SOD policy verification asynchronously.  A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$EntitlementRef1 = Initialize-EntitlementRef1 -Type "ENTITLEMENT" -Id "2c91809773dee32014e13e122092014e" -Name "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local"
$IdentityWithNewAccess1 = Initialize-IdentityWithNewAccess1 -IdentityId "2c91809050db617d0150e0bf3215385e" -AccessRefs $EntitlementRef1 -ClientMetadata @{ key_example = "MyInner" } # IdentityWithNewAccess1 | 

# Check SOD violations
try {
    $Result = Start-V2024ViolationCheck -IdentityWithNewAccess1 $IdentityWithNewAccess1
} catch {
    Write-Host ("Exception occurred when calling Start-V2024ViolationCheck: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityWithNewAccess1** | [**IdentityWithNewAccess1**](IdentityWithNewAccess1.md)|  | 

### Return type

[**SodViolationCheck**](SodViolationCheck.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

