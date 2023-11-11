# EntitlementDtoAllOf
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | Name of the entitlement attribute | [optional] 
**Value** | **String** | Raw value of the entitlement | [optional] 
**Description** | **String** | Entitlment description | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Entitlement attributes | [optional] 
**SourceSchemaObjectType** | **String** | Schema objectType on the given application that maps to an Account Group | [optional] 
**Privileged** | **Boolean** | Determines if this Entitlement is privileged. | [optional] 
**CloudGoverned** | **Boolean** | Determines if this Entitlement is goverened in the cloud. | [optional] 
**Source** | [**EntitlementSource**](EntitlementSource.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementDtoAllOf = Initialize-EntitlementDtoAllOf  -Attribute authorizationType `
 -Value CN&#x3D;Users,dc&#x3D;sailpoint,dc&#x3D;com `
 -Description Active Directory DC `
 -Attributes {GroupType&#x3D;Security, sAMAccountName&#x3D;Buyer} `
 -SourceSchemaObjectType group `
 -Privileged false `
 -CloudGoverned false `
 -Source null
```

- Convert the resource to JSON
```powershell
$EntitlementDtoAllOf | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

