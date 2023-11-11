# ReviewDecision
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the review decision | 
**Decision** | [**CertificationDecision**](CertificationDecision.md) |  | 
**ProposedEndDate** | **System.DateTime** | The date at which a user&#39;s access should be taken away. Should only be set for &#x60;REVOKE&#x60; decisions. | [optional] 
**Bulk** | **Boolean** | Indicates whether decision should be marked as part of a larger bulk decision | 
**Recommendation** | [**ReviewRecommendation**](ReviewRecommendation.md) |  | [optional] 
**Comments** | **String** | Comments recorded when the decision was made | [optional] 

## Examples

- Prepare the resource
```powershell
$ReviewDecision = Initialize-ReviewDecision  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Decision null `
 -ProposedEndDate 2017-07-11T18:45:37.098Z `
 -Bulk true `
 -Recommendation null `
 -Comments This user no longer needs access to this source
```

- Convert the resource to JSON
```powershell
$ReviewDecision | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

