# UserAppOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The identity ID | [optional] 
**Type** | **String** | It will always be &quot;&quot;IDENTITY&quot;&quot; | [optional] 
**Name** | **String** | The identity name | [optional] 
**Alias** | **String** | The identity alias | [optional] 

## Examples

- Prepare the resource
```powershell
$UserAppOwner = Initialize-PSSailpoint.V2024UserAppOwner  -Id 2c9180827ca885d7017ca8ce28a000eb `
 -Type IDENTITY `
 -Name John `
 -Alias John.Doe
```

- Convert the resource to JSON
```powershell
$UserAppOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

