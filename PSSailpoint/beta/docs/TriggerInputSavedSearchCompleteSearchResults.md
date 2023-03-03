# TriggerInputSavedSearchCompleteSearchResults
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | [**TriggerInputSavedSearchCompleteSearchResultsAccount**](TriggerInputSavedSearchCompleteSearchResultsAccount.md) |  | [optional] 
**Entitlement** | [**TriggerInputSavedSearchCompleteSearchResultsEntitlement**](TriggerInputSavedSearchCompleteSearchResultsEntitlement.md) |  | [optional] 
**Identity** | [**TriggerInputSavedSearchCompleteSearchResultsIdentity**](TriggerInputSavedSearchCompleteSearchResultsIdentity.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TriggerInputSavedSearchCompleteSearchResults = Initialize-PSSailpointBetaTriggerInputSavedSearchCompleteSearchResults  -Account null `
 -Entitlement null `
 -Identity null
```

- Convert the resource to JSON
```powershell
$TriggerInputSavedSearchCompleteSearchResults | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

