# CompleteInvocation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Secret** | **String** | Unique invocation secret that was generated when the invocation was created. Required to authenticate to the endpoint. | 
**VarError** | **String** | The error message to indicate a failed invocation or error if any. | [optional] 
**Output** | [**SystemCollectionsHashtable**](.md) | Trigger output to complete the invocation. Its schema is defined in the trigger definition. | 

## Examples

- Prepare the resource
```powershell
$CompleteInvocation = Initialize-BetaCompleteInvocation  -Secret 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
 -VarError Access request is denied. `
 -Output {approved&#x3D;false}
```

- Convert the resource to JSON
```powershell
$CompleteInvocation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

