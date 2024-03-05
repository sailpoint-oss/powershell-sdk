# Product
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProductName** | **String** | Name of the Product | [optional] 
**Url** | **String** | URL of the Product | [optional] 
**ProductTenantId** | **String** | An identifier for a specific product-tenant combination | [optional] 
**ProductRegion** | **String** | Product region | [optional] 
**ProductRight** | **String** | Right needed for the Product | [optional] 
**ApiUrl** | **String** | API URL of the Product | [optional] 
**Licenses** | [**License[]**](License.md) |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Additional attributes for a product | [optional] 
**Zone** | **String** | Zone | [optional] 
**Status** | **String** | Status of the product | [optional] 
**StatusDateTime** | **System.DateTime** | Status datetime | [optional] 
**Reason** | **String** | If there&#39;s a tenant provisioning failure then reason will have the description of error | [optional] 
**Notes** | **String** | Product could have additional notes added during tenant provisioning. | [optional] 
**DateCreated** | **System.DateTime** | Date when the product was created | [optional] 
**LastUpdated** | **System.DateTime** | Date when the product was last updated | [optional] 
**OrgType** | **String** | Type of org | [optional] 

## Examples

- Prepare the resource
```powershell
$Product = Initialize-PSSailpointBetaProduct  -ProductName idn `
 -Url https://tenant-name.identitynow.com `
 -ProductTenantId tenant#product `
 -ProductRegion us-east-1 `
 -ProductRight idn:ui:view `
 -ApiUrl https://tenant-name.api.identitynow.com `
 -Licenses null `
 -Attributes {domain&#x3D;https://tenant-name.identitynow.com, maxRegisteredUsers&#x3D;250} `
 -Zone Deployment zone for the Product `
 -Status active `
 -StatusDateTime 2020-05-19T13:49:37.385Z `
 -Reason Reason `
 -Notes Example notes `
 -DateCreated 2020-05-19T13:49:37.385Z `
 -LastUpdated 2020-05-19T13:49:37.385Z `
 -OrgType test
```

- Convert the resource to JSON
```powershell
$Product | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

