# AttributeValueDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | Technical name of the Attribute value. This is unique and cannot be changed after creation. | [optional] 
**Name** | **String** | The display name of the Attribute value. | [optional] 
**Status** | **String** | The status of the Attribute value. | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeValueDTO = Initialize-Tm.BetaAttributeValueDTO  -Value public `
 -Name Public `
 -Status active
```

- Convert the resource to JSON
```powershell
$AttributeValueDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

