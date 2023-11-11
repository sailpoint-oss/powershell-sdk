# CommonAccessItemResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Common Access Item ID | [optional] 
**Access** | [**CommonAccessItemAccess**](CommonAccessItemAccess.md) |  | [optional] 
**Status** | [**CommonAccessItemState**](CommonAccessItemState.md) |  | [optional] 
**LastUpdated** | **String** |  | [optional] 
**ReviewedByUser** | **Boolean** |  | [optional] 
**LastReviewed** | **String** |  | [optional] 
**CreatedByUser** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonAccessItemResponse = Initialize-BetaCommonAccessItemResponse  -Id null `
 -Access null `
 -Status null `
 -LastUpdated null `
 -ReviewedByUser null `
 -LastReviewed null `
 -CreatedByUser null
```

- Convert the resource to JSON
```powershell
$CommonAccessItemResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

