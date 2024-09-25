# MultiHostIntegrationsAggScheduleUpdate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MultihostId** | **String** | Multi-Host Integration ID. The ID must be unique | 
**AggregationGrpId** | **String** | Multi-Host Integration aggregation group ID | 
**AggregationGrpName** | **String** | Multi-Host Integration name | 
**AggregationCronSchedule** | **String** | Cron expression to schedule aggregation | 
**EnableSchedule** | **Boolean** | Boolean value for Multi-Host Integration aggregation schedule.  This specifies if scheduled aggregation is enabled or disabled. | [default to $false]
**SourceIdList** | **String[]** | Source IDs of the Multi-Host Integration | 
**Created** | **System.DateTime** | Created date of Multi-Host Integration aggregation schedule | [optional] 
**Modified** | **System.DateTime** | Modified date of Multi-Host Integration aggregation schedule | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsAggScheduleUpdate = Initialize-PSSailpoint.BetaMultiHostIntegrationsAggScheduleUpdate  -MultihostId 004091cb79b04636b88662afa50a4456 `
 -AggregationGrpId 004091cb79b04636b88662afa50a4448 `
 -AggregationGrpName Multi-Host Integration aggregation group name `
 -AggregationCronSchedule 0 0 0 * * ? `
 -EnableSchedule false `
 -SourceIdList [004091cb79b04636b88662afa50a4440, 00af6d0d562a49b591c47be908740542] `
 -Created 2024-01-23T18:08:50.897Z `
 -Modified 2024-01-23T18:08:50.897Z
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsAggScheduleUpdate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

