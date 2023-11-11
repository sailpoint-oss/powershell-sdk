# AccessReviewItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessSummary** | [**AccessSummary**](AccessSummary.md) |  | [optional] 
**IdentitySummary** | [**CertificationIdentitySummary**](CertificationIdentitySummary.md) |  | [optional] 
**Id** | **String** | The review item&#39;s id | [optional] 
**Completed** | **Boolean** | Whether the review item is complete | [optional] 
**NewAccess** | **Boolean** | Indicates whether the review item is for new access to a source | [optional] 
**Decision** | [**CertificationDecision**](CertificationDecision.md) |  | [optional] 
**Comments** | **String** | Comments for this review item | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessReviewItem = Initialize-AccessReviewItem  -AccessSummary null `
 -IdentitySummary null `
 -Id ef38f94347e94562b5bb8424a56397d8 `
 -Completed false `
 -NewAccess false `
 -Decision null `
 -Comments This user still needs access to this source
```

- Convert the resource to JSON
```powershell
$AccessReviewItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

