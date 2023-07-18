# FormUsedBy
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID is a unique identifier | [optional] 
**Type** | **String** | Type is a FormUsedByType value WORKFLOW FormUsedByTypeWorkflow SOURCE FormUsedByTypeSource | [optional] 

## Examples

- Prepare the resource
```powershell
$FormUsedBy = Initialize-PSSailpointBetaFormUsedBy  -Id 00000000-0000-0000-0000-000000000000 `
 -Type WORKFLOW
```

- Convert the resource to JSON
```powershell
$FormUsedBy | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

