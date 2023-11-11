# ConnectorRuleResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | the name of the rule | 
**Description** | **String** | a description of the rule&#39;s purpose | [optional] 
**Type** | **String** | the type of rule | 
**Signature** | [**ConnectorRuleCreateRequestSignature**](ConnectorRuleCreateRequestSignature.md) |  | [optional] 
**SourceCode** | [**SourceCode**](SourceCode.md) |  | 
**Attributes** | [**SystemCollectionsHashtable**](.md) | a map of string to objects | [optional] 
**Id** | **String** | the ID of the rule | 
**Created** | **String** | an ISO 8601 UTC timestamp when this rule was created | 
**Modified** | **String** | an ISO 8601 UTC timestamp when this rule was last modified | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorRuleResponse = Initialize-BetaConnectorRuleResponse  -Name WebServiceBeforeOperationRule `
 -Description This rule does that `
 -Type BuildMap `
 -Signature null `
 -SourceCode null `
 -Attributes {} `
 -Id 8113d48c0b914f17b4c6072d4dcb9dfe `
 -Created 021-07-22T15:59:23Z `
 -Modified 021-07-22T15:59:23Z
```

- Convert the resource to JSON
```powershell
$ConnectorRuleResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

