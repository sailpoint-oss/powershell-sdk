# ConnectorRuleValidationResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** |  | 
**Details** | [**ConnectorRuleValidationResponseDetailsInner[]**](ConnectorRuleValidationResponseDetailsInner.md) |  | 

## Examples

- Prepare the resource
```powershell
$ConnectorRuleValidationResponse = Initialize-BetaConnectorRuleValidationResponse  -State ERROR `
 -Details null
```

- Convert the resource to JSON
```powershell
$ConnectorRuleValidationResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

