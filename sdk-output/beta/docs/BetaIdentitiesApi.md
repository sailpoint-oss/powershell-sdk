# PSSailpointBeta.PSSailpointBeta/Api.BetaIdentitiesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Sync-BetahronizeAttributesForIdentity**](BetaIdentitiesApi.md#Sync-BetahronizeAttributesForIdentity) | **POST** /identities/{identityId}/synchronize-attributes | Attribute synchronization for single identity.


<a name="Sync-BetahronizeAttributesForIdentity"></a>
# **Sync-BetahronizeAttributesForIdentity**
> IdentitySyncJob Sync-BetahronizeAttributesForIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>

Attribute synchronization for single identity.

This end-point performs attribute synchronization for a selected identity. The endpoint can be called once in 10 seconds per identity. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "MyIdentityId" # String | The Identity id

# Attribute synchronization for single identity.
try {
    $Result = Sync-BetahronizeAttributesForIdentity -IdentityId $IdentityId
} catch {
    Write-Host ("Exception occurred when calling Sync-BetahronizeAttributesForIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| The Identity id | 

### Return type

[**IdentitySyncJob**](IdentitySyncJob.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

