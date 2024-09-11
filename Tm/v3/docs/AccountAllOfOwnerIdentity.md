# AccountAllOfOwnerIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of object being referenced | [optional] 
**Id** | **String** | ID of the identity | [optional] 
**Name** | **String** | Human-readable display name of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountAllOfOwnerIdentity = Initialize-Tm.V3AccountAllOfOwnerIdentity  -Type IDENTITY `
 -Id 2c918084660f45d6016617daa9210584 `
 -Name Adam Kennedy
```

- Convert the resource to JSON
```powershell
$AccountAllOfOwnerIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

