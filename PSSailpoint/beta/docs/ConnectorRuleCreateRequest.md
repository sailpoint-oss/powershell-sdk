# ConnectorRuleCreateRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | the name of the rule | 
**Description** | **String** | a description of the rule&#39;s purpose | [optional] 
**Type** | **String** | the type of rule | 
**Signature** | [**ConnectorRuleCreateRequestSignature**](ConnectorRuleCreateRequestSignature.md) |  | [optional] 
**SourceCode** | [**SourceCode**](SourceCode.md) |  | 
**Attributes** | [**SystemCollectionsHashtable**](.md) | a map of string to objects | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorRuleCreateRequest = Initialize-BetaConnectorRuleCreateRequest  -Name WebServiceBeforeOperationRule `
 -Description This rule does that `
 -Type BuildMap `
 -Signature null `
 -SourceCode null `
 -Attributes {}
```

- Convert the resource to JSON
```powershell
$ConnectorRuleCreateRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

