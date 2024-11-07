# Recommendation
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Recommended type of account. | 
**Method** | **String** | Method used to produce the recommendation. DISCOVERY - suggested by AI, SOURCE - the account comes from a source flagged as containing machine accounts, CRITERIA - the account satisfies classification criteria. | 

## Examples

- Prepare the resource
```powershell
$Recommendation = Initialize-PSSailpoint.V2024Recommendation  -Type MACHINE `
 -Method DISCOVERY
```

- Convert the resource to JSON
```powershell
$Recommendation | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

