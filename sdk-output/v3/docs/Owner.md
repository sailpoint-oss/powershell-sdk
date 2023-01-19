# Owner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Email** | **String** | The email of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$Owner = Initialize-PSSailpointOwner  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Type null `
 -Email john.doe@sailpoint.com
```

- Convert the resource to JSON
```powershell
$Owner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

