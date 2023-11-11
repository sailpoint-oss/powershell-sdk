# FormOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | FormOwnerType value. IDENTITY FormOwnerTypeIdentity | [optional] 
**Id** | **String** | Unique identifier of the form&#39;s owner. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormOwner = Initialize-BetaFormOwner  -Type IDENTITY `
 -Id 00000000-0000-0000-0000-000000000000
```

- Convert the resource to JSON
```powershell
$FormOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

