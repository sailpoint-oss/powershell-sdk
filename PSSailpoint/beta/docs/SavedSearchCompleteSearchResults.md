# SavedSearchCompleteSearchResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | [**SavedSearchCompleteSearchResultsAccount**](SavedSearchCompleteSearchResultsAccount.md) |  | [optional] 
**Entitlement** | [**SavedSearchCompleteSearchResultsEntitlement**](SavedSearchCompleteSearchResultsEntitlement.md) |  | [optional] 
**Identity** | [**SavedSearchCompleteSearchResultsIdentity**](SavedSearchCompleteSearchResultsIdentity.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SavedSearchCompleteSearchResults = Initialize-BetaSavedSearchCompleteSearchResults  -Account null `
 -Entitlement null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$SavedSearchCompleteSearchResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

