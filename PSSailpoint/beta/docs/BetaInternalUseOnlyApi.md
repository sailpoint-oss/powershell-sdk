# PSSailpointBeta.PSSailpointBeta/Api.BetaInternalUseOnlyApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Update-BetaIdentity**](BetaInternalUseOnlyApi.md#Update-BetaIdentity) | **PATCH** /identities/{id} | Update an Identity


<a name="Update-BetaIdentity"></a>
# **Update-BetaIdentity**
> InternalIdentityDto Update-BetaIdentity<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequestBody] <PSCustomObject[]><br>

Update an Identity

Allows updating individual fields on an Identity using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. This endpoint is internal only and not intended to be moved to V3. When HEAD and DELETE endpoints are moved to V3 we will need to separate this entity and keep PATCH in beta only.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityId = "2c9180835d191a86015d28455b4a2329" # String | The ID of the identity being modified.
$RequestBody =  # SystemCollectionsHashtable[] | A list of identity update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable: * internalCloudStatus

# Update an Identity
try {
    $Result = Update-BetaIdentity -IdentityId $IdentityId -RequestBody $RequestBody
} catch {
    Write-Host ("Exception occurred when calling Update-BetaIdentity: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| The ID of the identity being modified. | 
 **RequestBody** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md)| A list of identity update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable: * internalCloudStatus | 

### Return type

[**InternalIdentityDto**](InternalIdentityDto.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

