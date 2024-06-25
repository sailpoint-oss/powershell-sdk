# CommonAccessResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique ID of the common access item | [optional] 
**Access** | [**CommonAccessItemAccess**](CommonAccessItemAccess.md) |  | [optional] 
**Status** | **String** | CONFIRMED or DENIED | [optional] 
**CommonAccessType** | **String** |  | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**ReviewedByUser** | **Boolean** | true if user has confirmed or denied status | [optional] 
**LastReviewed** | **System.DateTime** |  | [optional] [readonly] 
**CreatedByUser** | **Boolean** |  | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CommonAccessResponse = Initialize-PSSailpointBetaCommonAccessResponse  -Id 555ab47a-0d32-4813-906f-adf3567de6a4 `
 -Access null `
 -Status null `
 -CommonAccessType UNSET `
 -LastUpdated null `
 -ReviewedByUser null `
 -LastReviewed null `
 -CreatedByUser false
```

- Convert the resource to JSON
```powershell
$CommonAccessResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

