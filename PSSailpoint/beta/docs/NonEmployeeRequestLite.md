# NonEmployeeRequestLite
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Non-Employee request id. | [optional] 
**Requester** | [**IdentityReferenceWithId**](IdentityReferenceWithId.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRequestLite = Initialize-PSSailpoint.BetaNonEmployeeRequestLite  -Id ac10e21c-931c-1ef2-8193-1c51e7ff0003 `
 -Requester null
```

- Convert the resource to JSON
```powershell
$NonEmployeeRequestLite | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

