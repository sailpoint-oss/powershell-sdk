# BaseEntitlement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HasPermissions** | **Boolean** | Indicates whether the entitlement has permissions. | [optional] [default to $false]
**Description** | **String** | Entitlement&#39;s description. | [optional] 
**Attribute** | **String** | Entitlement attribute&#39;s name. | [optional] 
**Value** | **String** | Entitlement&#39;s value. | [optional] 
**Schema** | **String** | Entitlement&#39;s schema. | [optional] 
**Privileged** | **Boolean** | Indicates whether the entitlement is privileged. | [optional] [default to $false]
**Id** | **String** | Entitlement&#39;s ID. | [optional] 
**Name** | **String** | Entitlement&#39;s name. | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseEntitlement = Initialize-Tm.V2024BaseEntitlement  -HasPermissions false `
 -Description Cloud engineering `
 -Attribute memberOf `
 -Value CN&#x3D;Cloud Engineering,DC&#x3D;sailpoint,DC&#x3D;COM `
 -Schema group `
 -Privileged false `
 -Id 2c918084575812550157589064f33b89 `
 -Name CN&#x3D;Cloud Engineering,DC&#x3D;sailpoint,DC&#x3D;COM
```

- Convert the resource to JSON
```powershell
$BaseEntitlement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

