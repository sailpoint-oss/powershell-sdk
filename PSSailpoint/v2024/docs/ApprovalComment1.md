# ApprovalComment1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Author** | [**ApprovalIdentity**](ApprovalIdentity.md) |  | [optional] 
**Comment** | **String** | Comment to be left on an approval | [optional] 
**CreatedDate** | **String** | Date the comment was created | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalComment1 = Initialize-PSSailpoint.V2024ApprovalComment1  -Author null `
 -Comment Looks good `
 -CreatedDate 2023-04-12T23:20:50.52Z
```

- Convert the resource to JSON
```powershell
$ApprovalComment1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

