# PSSailpointBeta.PSSailpointBeta/Api.BetaSODViolationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-BetaPredictSodViolations**](BetaSODViolationsApi.md#Invoke-BetaPredictSodViolations) | **POST** /sod-violations/predict | Predict SOD violations for the given identity if they were granted the given access.


<a name="Invoke-BetaPredictSodViolations"></a>
# **Invoke-BetaPredictSodViolations**
> ViolationPrediction Invoke-BetaPredictSodViolations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityWithNewAccess] <PSCustomObject><br>

Predict SOD violations for the given identity if they were granted the given access.

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

# Predict SOD violations for the given identity if they were granted the given access.
try {
    $Result = Invoke-BetaPredictSodViolations -IdentityWithNewAccess $IdentityWithNewAccess
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaPredictSodViolations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

