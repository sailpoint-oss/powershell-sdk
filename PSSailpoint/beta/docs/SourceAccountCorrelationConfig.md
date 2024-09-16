# SourceAccountCorrelationConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | [optional] 
**Id** | **String** | Account correlation config ID. | [optional] 
**Name** | **String** | Account correlation config&#39;s human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceAccountCorrelationConfig = Initialize-PSSailpoint.BetaSourceAccountCorrelationConfig  -Type ACCOUNT_CORRELATION_CONFIG `
 -Id 2c9180855d191c59015d28583727245a `
 -Name Directory [source-62867] Account Correlation
```

- Convert the resource to JSON
```powershell
$SourceAccountCorrelationConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

