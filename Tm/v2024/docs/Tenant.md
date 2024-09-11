# Tenant
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique identifier for the Tenant | [optional] [readonly] 
**Name** | **String** | Abbreviated name of the Tenant | [optional] 
**FullName** | **String** | Human-readable name of the Tenant | [optional] 
**Pod** | **String** | Deployment pod for the Tenant | [optional] 
**Region** | **String** | Deployment region for the Tenant | [optional] 
**Description** | **String** | Description of the Tenant | [optional] 
**Products** | [**Product[]**](Product.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Tenant = Initialize-Tm.V2024Tenant  -Id 2c91808568c529c60168cca6f90c1324 `
 -Name acme `
 -FullName Acme, Inc `
 -Pod example-pod `
 -Region us-east-1 `
 -Description Description of the Tenant `
 -Products null
```

- Convert the resource to JSON
```powershell
$Tenant | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

