# FormUsedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | FormUsedByType value.  WORKFLOW FormUsedByTypeWorkflow SOURCE FormUsedByTypeSource MySailPoint FormUsedByType | [optional] 
**Id** | **String** | Unique identifier of the system using the form. | [optional] 
**Name** | **String** | Name of the system using the form. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormUsedBy = Initialize-PSSailpoint.V2024FormUsedBy  -Type WORKFLOW `
 -Id 61940a92-5484-42bc-bc10-b9982b218cdf `
 -Name Access Request Form
```

- Convert the resource to JSON
```powershell
$FormUsedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

