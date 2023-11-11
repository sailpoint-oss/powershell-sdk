# PSSailpointBeta.PSSailpointBeta/Api.BetaSODViolationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Start-BetaPredictSodViolations**](BetaSODViolationsApi.md#Start-BetaPredictSodViolations) | **POST** /sod-violations/predict | Predict SOD violations for identity.


<a name="Start-BetaPredictSodViolations"></a>
# **Start-BetaPredictSodViolations**
> ViolationPrediction Start-BetaPredictSodViolations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityWithNewAccess] <PSCustomObject><br>

Predict SOD violations for identity.

This API is used to check if granting some additional accesses would cause the subject to be in violation of any SOD policies. Returns the violations that would be caused.  A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
$IdentityWithNewAccessAccessRefsInner = Initialize-IdentityWithNewAccessAccessRefsInner -Type "ENTITLEMENT" -Id "2c91809773dee32014e13e122092014e" -Name "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local"
$IdentityWithNewAccess = Initialize-IdentityWithNewAccess -IdentityId "2c91808568c529c60168cca6f90c1313" -AccessRefs $IdentityWithNewAccessAccessRefsInner # IdentityWithNewAccess | 

# Predict SOD violations for identity.
try {
    $Result = Start-BetaPredictSodViolations -IdentityWithNewAccess $IdentityWithNewAccess
} catch {
    Write-Host ("Exception occurred when calling Start-BetaPredictSodViolations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

