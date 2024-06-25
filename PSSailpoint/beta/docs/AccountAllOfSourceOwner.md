# AccountAllOfSourceOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of object being referenced | [optional] 
**Id** | **String** | ID of the identity | [optional] 
**Name** | **String** | Human-readable display name of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountAllOfSourceOwner = Initialize-PSSailpointBetaAccountAllOfSourceOwner  -Type IDENTITY `
 -Id 4c5c8534e99445de98eef6c75e25eb01 `
 -Name SailPoint Support
```

- Convert the resource to JSON
```powershell
$AccountAllOfSourceOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

