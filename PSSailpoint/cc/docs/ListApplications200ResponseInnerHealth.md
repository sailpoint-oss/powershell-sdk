# ListApplications200ResponseInnerHealth
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **String** |  | [optional] 
**LastChanged** | **String** |  | [optional] 
**Since** | **Decimal** |  | [optional] 
**Healthy** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListApplications200ResponseInnerHealth = Initialize-CCListApplications200ResponseInnerHealth  -Status null `
 -LastChanged null `
 -Since null `
 -Healthy null
```

- Convert the resource to JSON
```powershell
$ListApplications200ResponseInnerHealth | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

