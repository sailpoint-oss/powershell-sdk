# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaLifecycleStatesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaLifecycleStates**](BetaLifecycleStatesApi.md#Get-BetaLifecycleStates) | **GET** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Get Lifecycle State
[**Update-BetaLifecycleStates**](BetaLifecycleStatesApi.md#Update-BetaLifecycleStates) | **PATCH** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Update Lifecycle State


<a id="Get-BetaLifecycleStates"></a>
# **Get-BetaLifecycleStates**
> LifecycleState Get-BetaLifecycleStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>

Get Lifecycle State

Use this endpoint to get a lifecycle state by its ID and its associated identity profile ID.   A token with ORG_ADMIN or API authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity Profile ID.
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle State ID.

# Get Lifecycle State
try {
    $Result = Get-BetaLifecycleStates -IdentityProfileId $IdentityProfileId -LifecycleStateId $LifecycleStateId
} catch {
    Write-Host ("Exception occurred when calling Get-BetaLifecycleStates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| Identity Profile ID. | 
 **LifecycleStateId** | **String**| Lifecycle State ID. | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaLifecycleStates"></a>
# **Update-BetaLifecycleStates**
> LifecycleState Update-BetaLifecycleStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Lifecycle State

Use this endpoint to update individual lifecycle state fields, using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  A token with ORG_ADMIN or API authority is required to call this API. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity Profile ID.
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle State ID.
$UpdateMultiHostSourcesRequestInnerValue = Initialize-UpdateMultiHostSourcesRequestInnerValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $UpdateMultiHostSourcesRequestInnerValue # JsonPatchOperation[] | A list of lifecycle state update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields can be updated: * enabled * description * accountActions * accessProfileIds * emailNotificationOption 

# Update Lifecycle State
try {
    $Result = Update-BetaLifecycleStates -IdentityProfileId $IdentityProfileId -LifecycleStateId $LifecycleStateId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaLifecycleStates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| Identity Profile ID. | 
 **LifecycleStateId** | **String**| Lifecycle State ID. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of lifecycle state update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields can be updated: * enabled * description * accountActions * accessProfileIds * emailNotificationOption  | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

