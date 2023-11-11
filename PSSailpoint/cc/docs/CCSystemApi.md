# PSSailpointCC.PSSailpointCC/Api.CCSystemApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-CCRefreshIdentities**](CCSystemApi.md#Invoke-CCRefreshIdentities) | **POST** /cc/api/system/refreshIdentities | Refresh Identities


<a name="Invoke-CCRefreshIdentities"></a>
# **Invoke-CCRefreshIdentities**
> System.Collections.Hashtable Invoke-CCRefreshIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ContentType] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RefreshIdentitiesRequest] <PSCustomObject><br>

Refresh Identities

This kicks off an identity refresh for a specified set of identity attributes.  This can be a long running process.  IdentityNow has pre-scheduled versions of this task at set intervals and events already, so only run this when directed by SailPoint.  _Note: If the identities specified by the filter do not exist, a full identity refresh will be run.  Use with caution._  Refresh Arguments:  | Key                   | Description                                        | |-----------------------|----------------------------------------------------| | correlateEntitlements | Analyzes entitlements, access profiles, and roles. | | promoteAttributes     | Calculates identity attributes.                    | | refreshManagerStatus  | Calculates manager correlation and manager status. | | synchronizeAttributes | Performs attribute sync provisioning.              | | pruneIdentities       | Removes any identities which don't have accounts.  | | provision             | Provisions any assigned roles or access profiles.  |

### Example
```powershell
$ContentType = "application/json" # String |  (optional)
$RefreshIdentitiesRequestRefreshArgs = Initialize-RefreshIdentitiesRequestRefreshArgs -CorrelateEntitlements $true -PromoteAttributes $true -RefreshManagerStatus $false -SynchronizeAttributes $false -PruneIdentities $false -Provision $false
$RefreshIdentitiesRequest = Initialize-RefreshIdentitiesRequest -VarFilter "MyVarFilter" -RefreshArgs $RefreshIdentitiesRequestRefreshArgs # RefreshIdentitiesRequest |  (optional)

# Refresh Identities
try {
    $Result = Invoke-CCRefreshIdentities -ContentType $ContentType -RefreshIdentitiesRequest $RefreshIdentitiesRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-CCRefreshIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ContentType** | **String**|  | [optional] 
 **RefreshIdentitiesRequest** | [**RefreshIdentitiesRequest**](RefreshIdentitiesRequest.md)|  | [optional] 

### Return type

[**System.Collections.Hashtable**](AnyType.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

