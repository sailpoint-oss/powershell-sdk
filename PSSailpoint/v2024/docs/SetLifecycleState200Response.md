# SetLifecycleState200Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountActivityId** | **String** | ID of the IdentityRequest object that is generated when the workflow launches. To follow the IdentityRequest, you can provide this ID with a [Get Account Activity request](https://developer.sailpoint.com/docs/api/v3/get-account-activity/). The response will contain relevant information about the IdentityRequest, such as its status. | [optional] 

## Examples

- Prepare the resource
```powershell
$SetLifecycleState200Response = Initialize-PSSailpointV2024SetLifecycleState200Response  -AccountActivityId 2c9180837ab5b716017ab7c6c9ef1e20
```

- Convert the resource to JSON
```powershell
$SetLifecycleState200Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

