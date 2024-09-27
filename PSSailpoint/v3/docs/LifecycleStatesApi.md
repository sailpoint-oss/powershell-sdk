# PSSailpoint.V3.PSSailpoint.V3\Api.LifecycleStatesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LifecycleState**](LifecycleStatesApi.md#New-LifecycleState) | **POST** /identity-profiles/{identity-profile-id}/lifecycle-states | Create Lifecycle State
[**Remove-LifecycleState**](LifecycleStatesApi.md#Remove-LifecycleState) | **DELETE** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Delete Lifecycle State
[**Get-LifecycleState**](LifecycleStatesApi.md#Get-LifecycleState) | **GET** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Get Lifecycle State
[**Get-LifecycleStates**](LifecycleStatesApi.md#Get-LifecycleStates) | **GET** /identity-profiles/{identity-profile-id}/lifecycle-states | Lists LifecycleStates
[**Set-LifecycleState**](LifecycleStatesApi.md#Set-LifecycleState) | **POST** /identities/{identity-id}/set-lifecycle-state | Set Lifecycle State
[**Update-LifecycleStates**](LifecycleStatesApi.md#Update-LifecycleStates) | **PATCH** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Update Lifecycle State


<a id="New-LifecycleState"></a>
# **New-LifecycleState**
> LifecycleState New-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleState] <PSCustomObject><br>

Create Lifecycle State

Use this endpoint to create a lifecycle state.

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

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity profile ID.
$EmailNotificationOption = Initialize-EmailNotificationOption -NotifyManagers $true -NotifyAllAdmins $true -NotifySpecificUsers $true -EmailAddressList "MyEmailAddressList"
$AccountAction = Initialize-AccountAction -Action "ENABLE" -SourceIds "MySourceIds"
$LifecycleState = Initialize-LifecycleState -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Enabled $true -TechnicalName "Technical Name" -Description "Lifecycle description" -IdentityCount 42 -EmailNotificationOption $EmailNotificationOption -AccountActions $AccountAction -AccessProfileIds "MyAccessProfileIds" -IdentityState "MyIdentityState" # LifecycleState | Lifecycle state to be created.

# Create Lifecycle State
try {
    $Result = New-LifecycleState -IdentityProfileId $IdentityProfileId -LifecycleState $LifecycleState
} catch {
    Write-Host ("Exception occurred when calling New-LifecycleState: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| Identity profile ID. | 
 **LifecycleState** | [**LifecycleState**](LifecycleState.md)| Lifecycle state to be created. | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-LifecycleState"></a>
# **Remove-LifecycleState**
> LifecyclestateDeleted Remove-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>

Delete Lifecycle State

Use this endpoint to delete the lifecycle state by its ID. 

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

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity profile ID.
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle state ID.

# Delete Lifecycle State
try {
    $Result = Remove-LifecycleState -IdentityProfileId $IdentityProfileId -LifecycleStateId $LifecycleStateId
} catch {
    Write-Host ("Exception occurred when calling Remove-LifecycleState: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| Identity profile ID. | 
 **LifecycleStateId** | **String**| Lifecycle state ID. | 

### Return type

[**LifecyclestateDeleted**](LifecyclestateDeleted.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LifecycleState"></a>
# **Get-LifecycleState**
> LifecycleState Get-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>

Get Lifecycle State

Use this endpoint to get a lifecycle state by its ID and its associated identity profile ID. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity profile ID.
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle state ID.

# Get Lifecycle State
try {
    $Result = Get-LifecycleState -IdentityProfileId $IdentityProfileId -LifecycleStateId $LifecycleStateId
} catch {
    Write-Host ("Exception occurred when calling Get-LifecycleState: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| Identity profile ID. | 
 **LifecycleStateId** | **String**| Lifecycle state ID. | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-LifecycleStates"></a>
# **Get-LifecycleStates**
> LifecycleState[] Get-LifecycleStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Lists LifecycleStates

Use this endpoint to list all lifecycle states by their associated identity profiles. 

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

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity profile ID.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "created,modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified** (optional)

# Lists LifecycleStates
try {
    $Result = Get-LifecycleStates -IdentityProfileId $IdentityProfileId -Limit $Limit -Offset $Offset -Count $Count -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-LifecycleStates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| Identity profile ID. | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified** | [optional] 

### Return type

[**LifecycleState[]**](LifecycleState.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-LifecycleState"></a>
# **Set-LifecycleState**
> SetLifecycleState200Response Set-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetLifecycleStateRequest] <PSCustomObject><br>

Set Lifecycle State

Use this API to set/update an identity's lifecycle state to the one provided and update the corresponding identity profile.

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

$IdentityId = "2c9180857893f1290178944561990364" # String | ID of the identity to update.
$SetLifecycleStateRequest = Initialize-SetLifecycleStateRequest -LifecycleStateId "2c9180877a86e408017a8c19fefe046c" # SetLifecycleStateRequest | 

# Set Lifecycle State
try {
    $Result = Set-LifecycleState -IdentityId $IdentityId -SetLifecycleStateRequest $SetLifecycleStateRequest
} catch {
    Write-Host ("Exception occurred when calling Set-LifecycleState: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityId** | **String**| ID of the identity to update. | 
 **SetLifecycleStateRequest** | [**SetLifecycleStateRequest**](SetLifecycleStateRequest.md)|  | 

### Return type

[**SetLifecycleState200Response**](SetLifecycleState200Response.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-LifecycleStates"></a>
# **Update-LifecycleStates**
> LifecycleState Update-LifecycleStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Lifecycle State

Use this endpoint to update individual lifecycle state fields, using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

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

$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity profile ID.
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle state ID.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of lifecycle state update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields can be updated: * enabled * description * accountActions * accessProfileIds * emailNotificationOption 

# Update Lifecycle State
try {
    $Result = Update-LifecycleStates -IdentityProfileId $IdentityProfileId -LifecycleStateId $LifecycleStateId -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-LifecycleStates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityProfileId** | **String**| Identity profile ID. | 
 **LifecycleStateId** | **String**| Lifecycle state ID. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of lifecycle state update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields can be updated: * enabled * description * accountActions * accessProfileIds * emailNotificationOption  | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth), [applicationAuth](../README.md#applicationAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

