# ApprovalName
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | Name of the approval | [optional] 
**Locale** | **String** | What locale the name of the approval is using | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalName = Initialize-PSSailpoint.V2024ApprovalName  -Value Audit DB Access `
 -Locale en_US
```

- Convert the resource to JSON
```powershell
$ApprovalName | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

