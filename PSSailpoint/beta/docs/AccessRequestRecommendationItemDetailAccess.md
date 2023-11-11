# AccessRequestRecommendationItemDetailAccess
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of access item being recommended. | [optional] 
**Type** | [**AccessRequestRecommendationItemType**](AccessRequestRecommendationItemType.md) |  | [optional] 
**Name** | **String** | Name of the access item | [optional] 
**Description** | **String** | Description of the access item | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestRecommendationItemDetailAccess = Initialize-BetaAccessRequestRecommendationItemDetailAccess  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Type null `
 -Name Employee-database-read-write `
 -Description This item grants an employee read and write access to the database
```

- Convert the resource to JSON
```powershell
$AccessRequestRecommendationItemDetailAccess | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

