# SourceManagerCorrelationRule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | [optional] 
**Id** | **String** | Rule ID. | [optional] 
**Name** | **String** | Rule&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceManagerCorrelationRule = Initialize-PSSailpoint.BetaSourceManagerCorrelationRule  -Type RULE `
 -Id 2c918085708c274401708c2a8a760001 `
 -Name Example Rule
```

- Convert the resource to JSON
```powershell
$SourceManagerCorrelationRule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

