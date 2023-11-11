# BaseEntitlementAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Description** | **String** | A description of the entitlement | [optional] 
**Attribute** | **String** | The name of the entitlement attribute | [optional] 
**Value** | **String** | The value of the entitlement | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseEntitlementAllOf = Initialize-BaseEntitlementAllOf  -Description The admin privilege `
 -Attribute admin `
 -Value true
```

- Convert the resource to JSON
```powershell
$BaseEntitlementAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

