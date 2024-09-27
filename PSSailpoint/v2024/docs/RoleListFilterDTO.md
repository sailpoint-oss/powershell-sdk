# RoleListFilterDTO
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filters** | **String** | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq* | [optional] 
**AmmKeyValues** | [**RoleListFilterDTOAmmKeyValuesInner[]**](RoleListFilterDTOAmmKeyValuesInner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleListFilterDTO = Initialize-PSSailpoint.V2024RoleListFilterDTO  -Filters dimensional eq false `
 -AmmKeyValues [{attribute&#x3D;iscFederalClassifications, values&#x3D;[secret]}]
```

- Convert the resource to JSON
```powershell
$RoleListFilterDTO | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

