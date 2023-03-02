# Revocability
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalSchemes** | [**AccessProfileApprovalScheme[]**](AccessProfileApprovalScheme.md) | List describing the steps in approving the revocation request | [optional] 

## Examples

- Prepare the resource
```powershell
$Revocability = Initialize-PSSailpointRevocability  -ApprovalSchemes null
```

- Convert the resource to JSON
```powershell
$Revocability | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

