# RevocabilityForRole
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommentsRequired** | **Boolean** | Whether the requester of the containing object must provide comments justifying the request | [optional] [default to $false]
**DenialCommentsRequired** | **Boolean** | Whether an approver must provide comments when denying the request | [optional] [default to $false]
**ApprovalSchemes** | [**ApprovalSchemeForRole[]**](ApprovalSchemeForRole.md) | List describing the steps in approving the revocation request | [optional] 

## Examples

- Prepare the resource
```powershell
$RevocabilityForRole = Initialize-Tm.V3RevocabilityForRole  -CommentsRequired false `
 -DenialCommentsRequired false `
 -ApprovalSchemes null
```

- Convert the resource to JSON
```powershell
$RevocabilityForRole | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

