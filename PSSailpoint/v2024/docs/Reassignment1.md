# Reassignment1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | [**CertificationReference1**](CertificationReference1.md) |  | [optional] 
**Comment** | **String** | Comments from the previous reviewer. | [optional] 

## Examples

- Prepare the resource
```powershell
$Reassignment1 = Initialize-PSSailpointV2024Reassignment1  -VarFrom null `
 -Comment Please review
```

- Convert the resource to JSON
```powershell
$Reassignment1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

