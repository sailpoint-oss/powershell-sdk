# AdminReviewReassign
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertificationIds** | **String[]** | List of certification IDs to reassign | [optional] 
**ReassignTo** | [**AdminReviewReassignReassignTo**](AdminReviewReassignReassignTo.md) |  | [optional] 
**Reason** | **String** | Comment to explain why the certification was reassigned | [optional] 

## Examples

- Prepare the resource
```powershell
$AdminReviewReassign = Initialize-PSSailpoint.V2024AdminReviewReassign  -CertificationIds [af3859464779471211bb8424a563abc1, af3859464779471211bb8424a563abc2, af3859464779471211bb8424a563abc3] `
 -ReassignTo null `
 -Reason reassigned for some reason
```

- Convert the resource to JSON
```powershell
$AdminReviewReassign | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

