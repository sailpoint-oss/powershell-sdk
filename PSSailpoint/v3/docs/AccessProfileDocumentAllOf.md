# AccessProfileDocumentAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Entitlements** | [**BaseEntitlement[]**](BaseEntitlement.md) |  | [optional] 
**EntitlementCount** | **Int32** |  | [optional] 
**Tags** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileDocumentAllOf = Initialize-AccessProfileDocumentAllOf  -Source null `
 -Entitlements null `
 -EntitlementCount 5 `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$AccessProfileDocumentAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

