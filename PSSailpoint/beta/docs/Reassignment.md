# Reassignment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | [**CertificationReference**](CertificationReference.md) |  | [optional] 
**Comment** | **String** | Comments from the previous reviewer. | [optional] 

## Examples

- Prepare the resource
```powershell
$Reassignment = Initialize-BetaReassignment  -VarFrom null `
 -Comment Please review
```

- Convert the resource to JSON
```powershell
$Reassignment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

