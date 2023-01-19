# IdentityReference1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | [**DtoType**](DtoType.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityReference1 = Initialize-PSSailpointIdentityReference1  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Type null
```

- Convert the resource to JSON
```powershell
$IdentityReference1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

