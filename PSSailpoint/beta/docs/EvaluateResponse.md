# EvaluateResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReassignToId** | **String** | The Identity ID which should be the recipient of any work items sent to a specific identity &amp; work type | [optional] 
**LookupTrail** | [**LookupStep[]**](LookupStep.md) | List of Reassignments found by looking up the next &#x60;TargetIdentity&#x60; in a ReassignmentConfiguration | [optional] 

## Examples

- Prepare the resource
```powershell
$EvaluateResponse = Initialize-BetaEvaluateResponse  -ReassignToId 869320b6b6f34a169b6178b1a865e66f `
 -LookupTrail null
```

- Convert the resource to JSON
```powershell
$EvaluateResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

