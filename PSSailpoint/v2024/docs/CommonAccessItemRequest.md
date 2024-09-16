# CommonAccessItemRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**CommonAccessItemAccess**](CommonAccessItemAccess.md) |  | [optional] 
**Status** | [**CommonAccessItemState**](CommonAccessItemState.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonAccessItemRequest = Initialize-PSSailpoint.V2024CommonAccessItemRequest  -Access null `
 -Status null
```

- Convert the resource to JSON
```powershell
$CommonAccessItemRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

