# AccessRequestPhases
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Started** | **System.DateTime** | The time that this phase started. | [optional] 
**Finished** | **System.DateTime** | The time that this phase finished. | [optional] 
**Name** | **String** | The name of this phase. | [optional] 
**State** | **String** | The state of this phase. | [optional] 
**Result** | **String** | The state of this phase. | [optional] 
**PhaseReference** | **String** | A reference to another object on the RequestedItemStatus that contains more details about the phase. Note that for the Provisioning phase, this will be empty if there are no manual work items. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestPhases = Initialize-BetaAccessRequestPhases  -Started 2020-07-11T00:00Z `
 -Finished 2020-07-12T00:00Z `
 -Name APPROVAL_PHASE `
 -State COMPLETED `
 -Result SUCCESSFUL `
 -PhaseReference approvalDetails
```

- Convert the resource to JSON
```powershell
$AccessRequestPhases | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

