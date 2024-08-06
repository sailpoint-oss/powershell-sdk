# ApprovalReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of the reference object | [optional] 
**Type** | **String** | What reference object does this ID correspond to | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalReference = Initialize-PSSailpointV2024ApprovalReference  -Id 64012350-8fd9-4f6c-a170-1fe123683899 `
 -Type AccessRequestId
```

- Convert the resource to JSON
```powershell
$ApprovalReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

