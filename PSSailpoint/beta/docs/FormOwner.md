# FormOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID is a unique identifier | [optional] 
**Type** | **String** | Type is a FormOwnerType value IDENTITY FormOwnerTypeIdentity | [optional] 

## Examples

- Prepare the resource
```powershell
$FormOwner = Initialize-PSSailpointBetaFormOwner  -Id 00000000-0000-0000-0000-000000000000 `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$FormOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

