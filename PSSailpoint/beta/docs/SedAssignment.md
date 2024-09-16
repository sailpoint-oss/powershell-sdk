# SedAssignment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Assignee** | [**SedAssignee**](SedAssignee.md) |  | [optional] 
**Items** | **String[]** | List of SED id&#39;s | [optional] 

## Examples

- Prepare the resource
```powershell
$SedAssignment = Initialize-PSSailpoint.BetaSedAssignment  -Assignee null `
 -Items null
```

- Convert the resource to JSON
```powershell
$SedAssignment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

