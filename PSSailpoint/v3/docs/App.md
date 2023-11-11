# App
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | [optional] 
**Name** | **String** | The human readable name of the referenced object. | [optional] 
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Account** | [**AppAllOfAccount**](AppAllOfAccount.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$App = Initialize-App  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Source null `
 -Account null
```

- Convert the resource to JSON
```powershell
$App | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

