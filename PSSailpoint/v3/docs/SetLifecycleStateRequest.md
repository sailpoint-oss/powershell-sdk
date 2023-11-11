# SetLifecycleStateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LifecycleStateId** | **String** | The ID of the lifecycle state to set | [optional] 

## Examples

- Prepare the resource
```powershell
$SetLifecycleStateRequest = Initialize-SetLifecycleStateRequest  -LifecycleStateId 2c9180877a86e408017a8c19fefe046c
```

- Convert the resource to JSON
```powershell
$SetLifecycleStateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

