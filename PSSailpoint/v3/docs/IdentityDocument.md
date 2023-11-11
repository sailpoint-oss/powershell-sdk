# IdentityDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | 
**Name** | **String** | The human readable name of the referenced object. | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**DisplayName** | **String** | The display name of the identity | [optional] 
**FirstName** | **String** | The first name of the identity | [optional] 
**LastName** | **String** | The last name of the identity | [optional] 
**Email** | **String** | The identity&#39;s primary email address | [optional] 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Synced** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Phone** | **String** | The phone number of the identity | [optional] 
**Inactive** | **Boolean** | Indicates if the identity is inactive | [optional] 
**Protected** | **Boolean** |  | [optional] 
**Status** | **String** | The identity&#39;s status in SailPoint | [optional] 
**EmployeeNumber** | **String** |  | [optional] 
**Manager** | [**DisplayReference**](DisplayReference.md) |  | [optional] 
**IsManager** | **Boolean** | Indicates if this identity is a manager of other identities | [optional] 
**IdentityProfile** | [**Reference1**](Reference1.md) |  | [optional] 
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | a map or dictionary of key/value pairs | [optional] 
**ProcessingState** | **String** |  | [optional] 
**ProcessingDetails** | [**ProcessingDetails**](ProcessingDetails.md) |  | [optional] 
**Accounts** | [**BaseAccount[]**](BaseAccount.md) | List of accounts associated with the identity | [optional] 
**AccountCount** | **Int32** | Number of accounts associated with the identity | [optional] 
**Apps** | [**App[]**](App.md) | The list of applications the identity has access to | [optional] 
**AppCount** | **Int32** | The number of applications the identity has access to | [optional] 
**Access** | [**IdentityAccess[]**](IdentityAccess.md) | The list of access items assigned to the identity | [optional] 
**AccessCount** | **Int32** | The number of access items assigned to the identity | [optional] 
**AccessProfileCount** | **Int32** | The number of access profiles assigned to the identity | [optional] 
**EntitlementCount** | **Int32** | The number of entitlements assigned to the identity | [optional] 
**RoleCount** | **Int32** | The number of roles assigned to the identity | [optional] 
**Owns** | [**Owns**](Owns.md) |  | [optional] 
**Tags** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityDocument = Initialize-IdentityDocument  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Type null `
 -DisplayName Carol.Adams `
 -FirstName Carol `
 -LastName Adams `
 -Email Carol.Adams@sailpointdemo.com `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Synced 2018-06-25T20:22:28.104Z `
 -Phone +1 440-527-3672 `
 -Inactive false `
 -Protected false `
 -Status UNREGISTERED `
 -EmployeeNumber 1a2a3d4e `
 -Manager null `
 -IsManager false `
 -IdentityProfile null `
 -Source null `
 -Attributes {country&#x3D;US, firstname&#x3D;Carol, cloudStatus&#x3D;UNREGISTERED} `
 -ProcessingState null `
 -ProcessingDetails null `
 -Accounts null `
 -AccountCount 3 `
 -Apps null `
 -AppCount 2 `
 -Access null `
 -AccessCount 5 `
 -AccessProfileCount 1 `
 -EntitlementCount 10 `
 -RoleCount 1 `
 -Owns null `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$IdentityDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

