# AccountAllOfSourceOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of owner object. | [optional] 
**Id** | **String** | Identity id | [optional] 
**Name** | **String** | Human-readable display name of the owner. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountAllOfSourceOwner = Initialize-Tm.V2024AccountAllOfSourceOwner  -Type IDENTITY `
 -Id 4c5c8534e99445de98eef6c75e25eb01 `
 -Name John Cavender
```

- Convert the resource to JSON
```powershell
$AccountAllOfSourceOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

