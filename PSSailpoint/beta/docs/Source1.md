# Source1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Source type. | [optional] 
**Properties** | [**SystemCollectionsHashtable**](.md) | Source properties. | [optional] 

## Examples

- Prepare the resource
```powershell
$Source1 = Initialize-PSSailpointBetaSource1  -Type rule `
 -Properties {attribute&#x3D;null, sourceName&#x3D;Employees}
```

- Convert the resource to JSON
```powershell
$Source1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

