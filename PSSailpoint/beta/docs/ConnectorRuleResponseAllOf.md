# ConnectorRuleResponseAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the ID of the rule | 
**Created** | **String** | an ISO 8601 UTC timestamp when this rule was created | 
**Modified** | **String** | an ISO 8601 UTC timestamp when this rule was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorRuleResponseAllOf = Initialize-BetaConnectorRuleResponseAllOf  -Id 8113d48c0b914f17b4c6072d4dcb9dfe `
 -Created 021-07-22T15:59:23Z `
 -Modified 021-07-22T15:59:23Z
```

- Convert the resource to JSON
```powershell
$ConnectorRuleResponseAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

