# SubscriptionPatchRequestInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** | **String** | The operation to be performed | 
**Path** | **String** | A string JSON Pointer representing the target path to an element to be affected by the operation | 
**Value** | [**JsonPatchOperationValue**](JsonPatchOperationValue.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SubscriptionPatchRequestInner = Initialize-PSSailpointBetaSubscriptionPatchRequestInner  -Op replace `
 -Path /description `
 -Value null
```

- Convert the resource to JSON
```powershell
$SubscriptionPatchRequestInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

