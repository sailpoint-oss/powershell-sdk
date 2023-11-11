# AppAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Account** | [**AppAllOfAccount**](AppAllOfAccount.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAllOf = Initialize-AppAllOf  -Source null `
 -Account null
```

- Convert the resource to JSON
```powershell
$AppAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

