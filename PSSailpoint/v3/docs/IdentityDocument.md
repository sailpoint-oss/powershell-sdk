# IdentityDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | 
**Name** | **String** | The human readable name of the referenced object. | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**DisplayName** | **String** | Identity&#39;s display name. | [optional] 
**FirstName** | **String** | Identity&#39;s first name. | [optional] 
**LastName** | **String** | Identity&#39;s last name. | [optional] 
**Email** | **String** | Identity&#39;s primary email address. | [optional] 
**Created** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was created. | [optional] 
**Modified** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was last modified. | [optional] 
**Phone** | **String** | Identity&#39;s phone number. | [optional] 
**Synced** | **String** | ISO-8601 date-time referring to the date-time when object was queued to be synced into search database for use in the search API.   This date-time changes anytime there is an update to the object, which triggers a synchronization event being sent to the search database.  There may be some delay between the &#x60;synced&#x60; time and the time when the updated data is actually available in the search API.  | [optional] 
**Inactive** | **Boolean** | Indicates whether the identity is inactive. | [optional] [default to $false]
**Protected** | **Boolean** | Indicates whether the identity is protected. | [optional] [default to $false]
**Status** | **String** | Identity&#39;s status in SailPoint. | [optional] 
**EmployeeNumber** | **String** | Identity&#39;s employee number. | [optional] 
**Manager** | [**IdentityDocumentAllOfManager**](IdentityDocumentAllOfManager.md) |  | [optional] 
**IsManager** | **Boolean** | Indicates whether the identity is a manager of other identities. | [optional] 
**IdentityProfile** | [**IdentityDocumentAllOfIdentityProfile**](IdentityDocumentAllOfIdentityProfile.md) |  | [optional] 
**Source** | [**IdentityDocumentAllOfSource**](IdentityDocumentAllOfSource.md) |  | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Map or dictionary of key/value pairs. | [optional] 
**ProcessingState** | **String** | Identity&#39;s processing state. | [optional] 
**ProcessingDetails** | [**ProcessingDetails**](ProcessingDetails.md) |  | [optional] 
**Accounts** | [**BaseAccount[]**](BaseAccount.md) | List of accounts associated with the identity. | [optional] 
**AccountCount** | **Int32** | Number of accounts associated with the identity. | [optional] 
**Apps** | [**App[]**](App.md) | List of applications the identity has access to. | [optional] 
**AppCount** | **Int32** | Number of applications the identity has access to. | [optional] 
**Access** | [**IdentityAccess[]**](IdentityAccess.md) | List of access items assigned to the identity. | [optional] 
**AccessCount** | **Int32** | Number of access items assigned to the identity. | [optional] 
**EntitlementCount** | **Int32** | Number of entitlements assigned to the identity. | [optional] 
**RoleCount** | **Int32** | Number of roles assigned to the identity. | [optional] 
**AccessProfileCount** | **Int32** | Number of access profiles assigned to the identity. | [optional] 
**Owns** | [**Owns[]**](Owns.md) | Access items the identity owns. | [optional] 
**OwnsCount** | **Int32** | Number of access items the identity owns. | [optional] 
**Tags** | **String[]** | Tags that have been applied to the object. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityDocument = Initialize-PSSailpointIdentityDocument  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Type null `
 -DisplayName Carol.Adams `
 -FirstName Carol `
 -LastName Adams `
 -Email Carol.Adams@sailpointdemo.com `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Phone +1 440-527-3672 `
 -Synced null `
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
 -EntitlementCount 10 `
 -RoleCount 1 `
 -AccessProfileCount 1 `
 -Owns null `
 -OwnsCount 5 `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$IdentityDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

