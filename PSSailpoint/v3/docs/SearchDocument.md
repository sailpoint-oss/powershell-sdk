# SearchDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | 
**Name** | **String** | The human readable name of the referenced object. | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Description** | **String** | The description of the access item | [optional] 
**Created** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Modified** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Synced** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**Enabled** | **Boolean** |  | [optional] 
**Requestable** | **Boolean** | Indicates if the access can be requested | [optional] 
**RequestCommentsRequired** | **Boolean** | Indicates if comments are required when requesting access | [optional] 
**Owner** | [**Owner**](Owner.md) |  | [optional] 
**Source** | [**Reference1**](Reference1.md) |  | [optional] 
**Entitlements** | [**BaseEntitlement[]**](BaseEntitlement.md) |  | [optional] 
**EntitlementCount** | **Int32** | The number of entitlements assigned to the identity | [optional] 
**Tags** | **String[]** |  | [optional] 
**Action** | **String** | The action that was performed | [optional] 
**Stage** | **String** | The current stage of the activity | [optional] 
**Origin** | **String** |  | [optional] 
**Status** | **String** | The identity&#39;s status in SailPoint | [optional] 
**Requester** | [**AccountSource**](AccountSource.md) |  | [optional] 
**Recipient** | [**AccountSource**](AccountSource.md) |  | [optional] 
**TrackingNumber** | **String** |  | [optional] 
**Errors** | **String[]** |  | [optional] 
**Warnings** | **String[]** |  | [optional] 
**Approvals** | [**Approval[]**](Approval.md) |  | [optional] 
**OriginalRequests** | [**OriginalRequest[]**](OriginalRequest.md) |  | [optional] 
**ExpansionItems** | [**ExpansionItem[]**](ExpansionItem.md) |  | [optional] 
**AccountRequests** | [**AccountRequest[]**](AccountRequest.md) |  | [optional] 
**Sources** | **String** |  | [optional] 
**AccountId** | **String** | The ID of the account | [optional] 
**Disabled** | **Boolean** | Indicates if the account is disabled | [optional] 
**Locked** | **Boolean** | Indicates if the account is locked | [optional] 
**Privileged** | **Boolean** |  | [optional] 
**ManuallyCorrelated** | **Boolean** | Indicates if the account has been manually correlated to an identity | [optional] 
**PasswordLastSet** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**EntitlementAttributes** | [**System.Collections.Hashtable**](AnyType.md) | a map or dictionary of key/value pairs | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | a map or dictionary of key/value pairs | [optional] 
**Identity** | [**DisplayReference**](DisplayReference.md) |  | [optional] 
**Access** | [**IdentityAccess[]**](IdentityAccess.md) | The list of access items assigned to the identity | [optional] 
**Uncorrelated** | **Boolean** | Indicates if the account is not correlated to an identity | [optional] 
**Duration** | **Int32** |  | [optional] 
**AvgDuration** | **Int32** |  | [optional] 
**ChangedAccounts** | **Int32** |  | [optional] 
**NextScheduled** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**StartTime** | **System.DateTime** | A date-time in ISO-8601 format | [optional] 
**SourceOwner** | **String** | John Doe | [optional] 
**Attribute** | **String** | The name of the entitlement attribute | [optional] 
**Value** | **String** | The value of the entitlement | [optional] 
**DisplayName** | **String** | The display name of the identity | [optional] 
**IdentityCount** | **Int32** |  | [optional] 
**Type** | **String** | The type of event | [optional] 
**Actor** | [**NameType**](NameType.md) |  | [optional] 
**Target** | [**NameType**](NameType.md) |  | [optional] 
**Stack** | **String** |  | [optional] 
**IpAddress** | **String** |  | [optional] 
**Details** | **String** |  | [optional] 
**Objects** | **String[]** |  | [optional] 
**Operation** | **String** |  | [optional] 
**TechnicalName** | **String** |  | [optional] 
**FirstName** | **String** | The first name of the identity | [optional] 
**LastName** | **String** | The last name of the identity | [optional] 
**Email** | **String** | The identity&#39;s primary email address | [optional] 
**Phone** | **String** | The phone number of the identity | [optional] 
**Inactive** | **Boolean** | Indicates if the identity is inactive | [optional] 
**Protected** | **Boolean** |  | [optional] 
**EmployeeNumber** | **String** |  | [optional] 
**Manager** | [**DisplayReference**](DisplayReference.md) |  | [optional] 
**IsManager** | **Boolean** | Indicates if this identity is a manager of other identities | [optional] 
**IdentityProfile** | [**Reference1**](Reference1.md) |  | [optional] 
**ProcessingState** | **String** |  | [optional] 
**ProcessingDetails** | [**ProcessingDetails**](ProcessingDetails.md) |  | [optional] 
**Accounts** | [**BaseAccount[]**](BaseAccount.md) | List of accounts associated with the identity | [optional] 
**AccountCount** | **Int32** | Number of accounts associated with the identity | [optional] 
**Apps** | [**App[]**](App.md) | The list of applications the identity has access to | [optional] 
**AppCount** | **Int32** | The number of applications the identity has access to | [optional] 
**AccessCount** | **Int32** | The number of access items assigned to the identity | [optional] 
**AccessProfileCount** | **Int32** |  | [optional] 
**RoleCount** | **Int32** | The number of roles assigned to the identity | [optional] 
**Owns** | [**Owns**](Owns.md) |  | [optional] 
**AccessProfiles** | [**Reference1[]**](Reference1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchDocument = Initialize-PSSailpointSearchDocument  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Type null `
 -Description The admin role `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Synced 2018-06-25T20:22:28.104Z `
 -Enabled true `
 -Requestable true `
 -RequestCommentsRequired false `
 -Owner null `
 -Source null `
 -Entitlements null `
 -EntitlementCount 10 `
 -Tags [TAG_1, TAG_2] `
 -Action update `
 -Stage Completed `
 -Origin null `
 -Status UNREGISTERED `
 -Requester null `
 -Recipient null `
 -TrackingNumber 63f891e0735f4cc8bf1968144a1e7440 `
 -Errors null `
 -Warnings null `
 -Approvals null `
 -OriginalRequests null `
 -ExpansionItems null `
 -AccountRequests null `
 -Sources smartsheet-test, airtable-v4, IdentityNow `
 -AccountId john.doe `
 -Disabled false `
 -Locked false `
 -Privileged false `
 -ManuallyCorrelated false `
 -PasswordLastSet 2018-06-25T20:22:28.104Z `
 -EntitlementAttributes {moderator&#x3D;true, admin&#x3D;true, trust_level&#x3D;4} `
 -Attributes {country&#x3D;US, firstname&#x3D;Carol, cloudStatus&#x3D;UNREGISTERED} `
 -Identity null `
 -Access null `
 -Uncorrelated false `
 -Duration 20 `
 -AvgDuration 20 `
 -ChangedAccounts 1 `
 -NextScheduled 2018-06-25T20:22:28.104Z `
 -StartTime 2018-06-25T20:22:28.104Z `
 -SourceOwner null `
 -Attribute admin `
 -Value true `
 -DisplayName Carol.Adams `
 -IdentityCount 3 `
 -Type SYSTEM_CONFIG `
 -Actor null `
 -Target null `
 -Stack tpe `
 -IpAddress 52.52.97.85 `
 -Details 73b65dfbed1842548c207432a18c84b0 `
 -Objects null `
 -Operation REQUEST `
 -TechnicalName AUTHENTICATION_REQUEST_PASSED `
 -FirstName Carol `
 -LastName Adams `
 -Email Carol.Adams@sailpointdemo.com `
 -Phone +1 440-527-3672 `
 -Inactive false `
 -Protected false `
 -EmployeeNumber 1a2a3d4e `
 -Manager null `
 -IsManager false `
 -IdentityProfile null `
 -ProcessingState null `
 -ProcessingDetails null `
 -Accounts null `
 -AccountCount 3 `
 -Apps null `
 -AppCount 2 `
 -AccessCount 5 `
 -AccessProfileCount null `
 -RoleCount 1 `
 -Owns null `
 -AccessProfiles null
```

- Convert the resource to JSON
```powershell
$SearchDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

