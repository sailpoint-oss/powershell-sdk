# AccessProfileEntitlement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | [optional] 
**Name** | **String** | The human readable name of the referenced object. | [optional] 
**DisplayName** | **String** |  | [optional] 
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Privileged** | **Boolean** |  | [optional] 
**Attribute** | **String** |  | [optional] 
**Value** | **String** |  | [optional] 
**Standalone** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileEntitlement = Initialize-PSSailpoint.V3AccessProfileEntitlement  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -DisplayName John Q. Doe `
 -Type null `
 -Description null `
 -Source null `
 -Privileged false `
 -Attribute memberOf `
 -Value CN&#x3D;Buyer,OU&#x3D;Groups,OU&#x3D;Demo,DC&#x3D;seri,DC&#x3D;sailpointdemo,DC&#x3D;com `
 -Standalone false
```

- Convert the resource to JSON
```powershell
$AccessProfileEntitlement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

