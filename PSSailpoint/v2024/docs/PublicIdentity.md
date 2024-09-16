# PublicIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identity id | [optional] 
**Name** | **String** | Human-readable display name of identity. | [optional] 
**Alias** | **String** | Alternate unique identifier for the identity. | [optional] 
**Email** | **String** | Email address of identity. | [optional] 
**Status** | **String** | The lifecycle status for the identity | [optional] 
**IdentityState** | **String** | The current state of the identity, which determines how Identity Security Cloud interacts with the identity. An identity that is Active will be included identity picklists in Request Center, identity processing, and more. Identities that are Inactive will be excluded from these features.  | [optional] 
**Manager** | [**IdentityReference**](IdentityReference.md) |  | [optional] 
**Attributes** | [**IdentityAttribute2[]**](IdentityAttribute2.md) | The public identity attributes of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicIdentity = Initialize-PSSailpoint.V2024PublicIdentity  -Id 2c9180857182305e0171993735622948 `
 -Name Alison Ferguso `
 -Alias alison.ferguso `
 -Email alison.ferguso@acme-solar.com `
 -Status Active `
 -IdentityState ACTIVE `
 -Manager null `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$PublicIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

