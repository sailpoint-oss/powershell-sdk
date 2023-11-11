# ScheduledSearch
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The scheduled search ID. | [readonly] 
**Owner** | [**ScheduledSearchAllOfOwner**](ScheduledSearchAllOfOwner.md) |  | 
**OwnerId** | **String** | The ID of the scheduled search owner.  Please use the &#x60;id&#x60; in the &#x60;owner&#x60; object instead.  | [readonly] 
**Name** | **String** | The name of the scheduled search.  | [optional] 
**Description** | **String** | The description of the scheduled search.  | [optional] 
**SavedSearchId** | **String** | The ID of the saved search that will be executed. | 
**Created** | **System.DateTime** | The date the scheduled search was initially created. | [optional] [readonly] 
**Modified** | **System.DateTime** | The last date the scheduled search was modified. | [optional] [readonly] 
**Schedule** | [**Schedule1**](Schedule1.md) |  | 
**Recipients** | [**SearchScheduleRecipientsInner[]**](SearchScheduleRecipientsInner.md) | A list of identities that should receive the scheduled search report via email. | 
**Enabled** | **Boolean** | Indicates if the scheduled search is enabled.  | [optional] [default to $false]
**EmailEmptyResults** | **Boolean** | Indicates if email generation should not be suppressed if search returns no results.  | [optional] [default to $false]
**DisplayQueryDetails** | **Boolean** | Indicates if the generated email should include the query and search results preview (which could include PII).  | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$ScheduledSearch = Initialize-ScheduledSearch  -Id 0de46054-fe90-434a-b84e-c6b3359d0c64 `
 -Owner null `
 -OwnerId 2c9180867624cbd7017642d8c8c81f67 `
 -Name Daily disabled accounts `
 -Description Daily disabled accounts `
 -SavedSearchId 554f1511-f0a1-4744-ab14-599514d3e57c `
 -Created null `
 -Modified null `
 -Schedule null `
 -Recipients null `
 -Enabled false `
 -EmailEmptyResults false `
 -DisplayQueryDetails false
```

- Convert the resource to JSON
```powershell
$ScheduledSearch | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

