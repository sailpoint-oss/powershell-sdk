# CommonAccessResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**CommonAccessItemAccess**](CommonAccessItemAccess.md) |  | [optional] 
**Status** | **String** | CONFIRMED or DENIED | [optional] 
**LastUpdated** | **System.DateTime** |  | [optional] [readonly] 
**ReviewedByUser** | **Boolean** | true if user has confirmed or denied status | [optional] 
**LastReviewed** | **System.DateTime** |  | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CommonAccessResponse = Initialize-BetaCommonAccessResponse  -Access null `
 -Status null `
 -LastUpdated null `
 -ReviewedByUser null `
 -LastReviewed null
```

- Convert the resource to JSON
```powershell
$CommonAccessResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

