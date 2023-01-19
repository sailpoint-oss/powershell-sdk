# ScheduleDays
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** |  | 
**Values** | **String[]** |  | 
**Interval** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduleDays = Initialize-PSSailpointBetaScheduleDays  -Type null `
 -Values null `
 -Interval null
```

- Convert the resource to JSON
```powershell
$ScheduleDays | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

