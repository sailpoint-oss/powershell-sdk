# RoleSummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**Owner** | [**DisplayReference**](DisplayReference.md) |  | [optional] 
**Disabled** | **Boolean** |  | [optional] 
**Revocable** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleSummary = Initialize-PSSailpointRoleSummary  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -DisplayName John Q. Doe `
 -Type null `
 -Description null `
 -Owner null `
 -Disabled null `
 -Revocable null
```

- Convert the resource to JSON
```powershell
$RoleSummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

