# Source1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Attribute mapping type. | [optional] 
**Properties** | [**SystemCollectionsHashtable**](.md) | Attribute mapping properties. | [optional] 

## Examples

- Prepare the resource
```powershell
$Source1 = Initialize-Tm.V2024Source1  -Type rule `
 -Properties {ruleType&#x3D;IdentityAttribute, ruleName&#x3D;Cloud Promote Identity Attribute}
```

- Convert the resource to JSON
```powershell
$Source1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

