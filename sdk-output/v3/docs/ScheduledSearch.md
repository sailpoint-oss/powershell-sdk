# ScheduledSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the scheduled search.  | [optional] 
**Description** | **String** | The description of the scheduled search.  | [optional] 
**SavedSearchId** | **String** | The ID of the saved search that will be executed.  | 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Schedule** | [**Schedule1**](Schedule1.md) |  | 
**Recipients** | [**TypedReference[]**](TypedReference.md) | The email recipients.  | 
**Enabled** | **Boolean** | Indicates if the scheduled search is enabled.  | [optional] [default to $false]
**EmailEmptyResults** | **Boolean** | Indicates if email generation should not be suppressed if search returns no results.  | [optional] [default to $false]
**DisplayQueryDetails** | **Boolean** | Indicates if the generated email should include the query and search results preview (which could include PII).  | [optional] [default to $false]
**Id** | **String** | The scheduled search ID.  | [optional] 
**Owner** | [**TypedReference**](TypedReference.md) |  | [optional] 
**OwnerId** | **String** | The ID of the scheduled search owner | [optional] 

## Examples

- Prepare the resource
```powershell
$ScheduledSearch = Initialize-PSSailpointScheduledSearch  -Name Daily disabled accounts `
 -Description Daily disabled accounts `
 -SavedSearchId 554f1511-f0a1-4744-ab14-599514d3e57c `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Schedule null `
 -Recipients null `
 -Enabled false `
 -EmailEmptyResults false `
 -DisplayQueryDetails false `
 -Id 0de46054-fe90-434a-b84e-c6b3359d0c64 `
 -Owner null `
 -OwnerId 2c9180867624cbd7017642d8c8c81f67
```

- Convert the resource to JSON
```powershell
$ScheduledSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

