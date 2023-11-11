# FormUsedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | FormUsedByType value.  WORKFLOW FormUsedByTypeWorkflow SOURCE FormUsedByTypeSource | [optional] 
**Id** | **String** | Unique identifier of the system using the form. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormUsedBy = Initialize-BetaFormUsedBy  -Type WORKFLOW `
 -Id 00000000-0000-0000-0000-000000000000
```

- Convert the resource to JSON
```powershell
$FormUsedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

