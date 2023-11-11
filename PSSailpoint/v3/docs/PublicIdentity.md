# PublicIdentity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identity id | [optional] 
**Name** | **String** | Human-readable display name of identity. | [optional] 
**Alias** | **String** | Alternate unique identifier for the identity. | [optional] 
**Email** | **String** | Email address of identity. | [optional] 
**Status** | **String** | The lifecycle status for the identity | [optional] 
**Manager** | [**IdentityReference**](IdentityReference.md) |  | [optional] 
**Attributes** | [**IdentityAttribute1[]**](IdentityAttribute1.md) | The public identity attributes of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$PublicIdentity = Initialize-PublicIdentity  -Id 2c9180857182305e0171993735622948 `
 -Name Alison Ferguso `
 -Alias alison.ferguso `
 -Email alison.ferguso@acme-solar.com `
 -Status Active `
 -Manager null `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$PublicIdentity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

