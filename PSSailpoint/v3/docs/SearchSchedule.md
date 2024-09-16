# SearchSchedule
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SavedSearchId** | **String** | The ID of the saved search that will be executed. | 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] [readonly] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] [readonly] 
**Schedule** | [**Schedule1**](Schedule1.md) |  | 
**Recipients** | [**SearchScheduleRecipientsInner[]**](SearchScheduleRecipientsInner.md) | A list of identities that should receive the scheduled search report via email. | 
**Enabled** | **Boolean** | Indicates if the scheduled search is enabled.  | [optional] [default to $false]
**EmailEmptyResults** | **Boolean** | Indicates if email generation should occur when search returns no results.  | [optional] [default to $false]
**DisplayQueryDetails** | **Boolean** | Indicates if the generated email should include the query and search results preview (which could include PII).  | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$SearchSchedule = Initialize-PSSailpoint.V3SearchSchedule  -SavedSearchId 554f1511-f0a1-4744-ab14-599514d3e57c `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Schedule null `
 -Recipients null `
 -Enabled false `
 -EmailEmptyResults false `
 -DisplayQueryDetails false
```

- Convert the resource to JSON
```powershell
$SearchSchedule | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

