# FormOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | FormOwnerType value. IDENTITY FormOwnerTypeIdentity | [optional] 
**Id** | **String** | Unique identifier of the form&#39;s owner. | [optional] 
**Name** | **String** | Name of the form&#39;s owner. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormOwner = Initialize-PSSailpoint.BetaFormOwner  -Type IDENTITY `
 -Id 2c9180867624cbd7017642d8c8c81f67 `
 -Name Grant Smith
```

- Convert the resource to JSON
```powershell
$FormOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

