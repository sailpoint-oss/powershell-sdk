# RequestedItemStatusSodViolationContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** | **String** | The status of SOD violation check | [optional] 
**Uuid** | **String** | The id of the Violation check event | [optional] 
**ViolationCheckResult** | [**SodViolationCheckResult**](SodViolationCheckResult.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestedItemStatusSodViolationContext = Initialize-Tm.BetaRequestedItemStatusSodViolationContext  -State SUCCESS `
 -Uuid f73d16e9-a038-46c5-b217-1246e15fdbdd `
 -ViolationCheckResult null
```

- Convert the resource to JSON
```powershell
$RequestedItemStatusSodViolationContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

