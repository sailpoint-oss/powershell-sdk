# LookupStep
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReassignedToId** | **String** | The ID of the Identity who work is reassigned to | [optional] 
**ReassignedFromId** | **String** | The ID of the Identity who work is reassigned from | [optional] 
**ReassignmentType** | [**ReassignmentTypeEnum**](ReassignmentTypeEnum.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$LookupStep = Initialize-Tm.BetaLookupStep  -ReassignedToId 869320b6b6f34a169b6178b1a865e66f `
 -ReassignedFromId 51948a8f306a4e7a9a6f8f5d032fa59e `
 -ReassignmentType null
```

- Convert the resource to JSON
```powershell
$LookupStep | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

