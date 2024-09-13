# SourceOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | [optional] 
**Id** | **String** | Owner identity&#39;s ID. | [optional] 
**Name** | **String** | Owner identity&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceOwner = Initialize-PSSailpoint.BetaSourceOwner  -Type IDENTITY `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name MyName
```

- Convert the resource to JSON
```powershell
$SourceOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

