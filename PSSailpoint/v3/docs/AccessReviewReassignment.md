# AccessReviewReassignment
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reassign** | [**ReassignReference[]**](ReassignReference.md) |  | 
**ReassignTo** | **String** | The ID of the identity to which the certification is reassigned | 
**Reason** | **String** | The reason comment for why the reassign was made | 

## Examples

- Prepare the resource
```powershell
$AccessReviewReassignment = Initialize-AccessReviewReassignment  -Reassign null `
 -ReassignTo ef38f94347e94562b5bb8424a56397d8 `
 -Reason reassigned for some reason
```

- Convert the resource to JSON
```powershell
$AccessReviewReassignment | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

