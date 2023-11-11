# PSSailpoint.PSSailpoint/Api.LifecycleStatesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-LifecycleState**](LifecycleStatesApi.md#New-LifecycleState) | **POST** /identity-profiles/{identity-profile-id}/lifecycle-states | Create Lifecycle State
[**Remove-LifecycleState**](LifecycleStatesApi.md#Remove-LifecycleState) | **DELETE** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Delete Lifecycle State by ID
[**Get-LifecycleState**](LifecycleStatesApi.md#Get-LifecycleState) | **GET** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Retrieves Lifecycle State
[**Get-LifecycleStates**](LifecycleStatesApi.md#Get-LifecycleStates) | **GET** /identity-profiles/{identity-profile-id}/lifecycle-states | Lists LifecycleStates
[**Set-LifecycleState**](LifecycleStatesApi.md#Set-LifecycleState) | **POST** /identities/{identity-id}/set-lifecycle-state | Set Lifecycle State
[**Update-LifecycleStates**](LifecycleStatesApi.md#Update-LifecycleStates) | **PATCH** /identity-profiles/{identity-profile-id}/lifecycle-states/{lifecycle-state-id} | Update Lifecycle State


<a name="New-LifecycleState"></a>
# **New-LifecycleState**
> LifecycleState New-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleState] <PSCustomObject><br>

Create Lifecycle State

This API creates a new Lifecycle State. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | Identity Profile ID
$EmailNotificationOption = Initialize-EmailNotificationOption -NotifyManagers $true -NotifyAllAdmins $true -NotifySpecificUsers $true -EmailAddressList "MyEmailAddressList"
$AccountAction = Initialize-AccountAction -Action "ENABLE" -SourceIds "MySourceIds"
$LifecycleState = Initialize-LifecycleState -Id "id12345" -Name "aName" -Created (Get-Date) -Modified (Get-Date) -Enabled $true -TechnicalName "Technical Name" -Description "Lifecycle description" -IdentityCount 42 -EmailNotificationOption $EmailNotificationOption -AccountActions $AccountAction -AccessProfileIds "MyAccessProfileIds" # LifecycleState | Lifecycle State

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
 **IdentityProfileId** | **String**| Identity Profile ID | 
 **LifecycleState** | [**LifecycleState**](LifecycleState.md)| Lifecycle State | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-LifecycleState"></a>
# **Remove-LifecycleState**
> LifecyclestateDeleted Remove-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>

Delete Lifecycle State by ID

This endpoint deletes the Lifecycle State using its ID. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity Profile ID
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle State ID

# Delete Lifecycle State by ID
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
 **IdentityProfileId** | **String**| Identity Profile ID | 
 **LifecycleStateId** | **String**| Lifecycle State ID | 

### Return type

[**LifecyclestateDeleted**](LifecyclestateDeleted.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-LifecycleState"></a>
# **Get-LifecycleState**
> LifecycleState Get-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>

Retrieves Lifecycle State

This endpoint retrieves a Lifecycle State. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity Profile ID
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle State ID

# Retrieves Lifecycle State
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
 **IdentityProfileId** | **String**| Identity Profile ID | 
 **LifecycleStateId** | **String**| Lifecycle State ID | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-LifecycleStates"></a>
# **Get-LifecycleStates**
> LifecycleState[] Get-LifecycleStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Lists LifecycleStates

This end-point lists all the LifecycleStates associated with IdentityProfiles. A token with API, or ORG_ADMIN authority is required to call this API.

### Example
```powershell
$IdentityProfileId = "ef38f94347e94562b5bb8424a56397d8" # String | The IdentityProfile id
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
 **IdentityProfileId** | **String**| The IdentityProfile id | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified** | [optional] 

### Return type

[**LifecycleState[]**](LifecycleState.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Set-LifecycleState"></a>
# **Set-LifecycleState**
> SetLifecycleState200Response Set-LifecycleState<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SetLifecycleStateRequest] <PSCustomObject><br>

Set Lifecycle State

This endpoint will set/update an identity's lifecycle state to the one provided and updates the corresponding Identity Profile. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
$IdentityId = "2c9180857893f1290178944561990364" # String | The ID of the identity to update
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
 **IdentityId** | **String**| The ID of the identity to update | 
 **SetLifecycleStateRequest** | [**SetLifecycleStateRequest**](SetLifecycleStateRequest.md)|  | 

### Return type

[**SetLifecycleState200Response**](SetLifecycleState200Response.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-LifecycleStates"></a>
# **Update-LifecycleStates**
> LifecycleState Update-LifecycleStates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityProfileId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LifecycleStateId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Lifecycle State

This endpoint updates individual Lifecycle State fields using the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. A token with ORG_ADMIN or API authority is required to call this API.

### Example
```powershell
$IdentityProfileId = "2b838de9-db9b-abcf-e646-d4f274ad4238" # String | Identity Profile ID
$LifecycleStateId = "ef38f94347e94562b5bb8424a56397d8" # String | Lifecycle State ID
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
 **IdentityProfileId** | **String**| Identity Profile ID | 
 **LifecycleStateId** | **String**| Lifecycle State ID | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of lifecycle state update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields can be updated: * enabled * description * accountActions * accessProfileIds * emailNotificationOption  | 

### Return type

[**LifecycleState**](LifecycleState.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

