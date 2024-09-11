# SearchDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | 
**Name** | **String** | The human readable name of the referenced object. | 
**Description** | **String** | Access item&#39;s description. | [optional] 
**Created** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was created. | [optional] 
**Modified** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was last modified. | [optional] 
**Synced** | **System.DateTime** | ISO-8601 date-time referring to the date-time when object was queued to be synced into search database for use in the search API.   This date-time changes anytime there is an update to the object, which triggers a synchronization event being sent to the search database.  There may be some delay between the &#x60;synced&#x60; time and the time when the updated data is actually available in the search API.  | [optional] 
**Enabled** | **Boolean** | Indicates whether the access item is currently enabled. | [optional] [default to $false]
**Requestable** | **Boolean** | Indicates whether the access item can be requested. | [optional] [default to $true]
**RequestCommentsRequired** | **Boolean** | Indicates whether comments are required for requests to access the item. | [optional] [default to $false]
**Owner** | [**BaseAccessAllOfOwner**](BaseAccessAllOfOwner.md) |  | [optional] 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Source** | [**IdentityDocumentAllOfSource**](IdentityDocumentAllOfSource.md) |  | [optional] 
**Entitlements** | [**BaseEntitlement[]**](BaseEntitlement.md) | Entitlements included with the role. | [optional] 
**EntitlementCount** | **Int32** | Number of entitlements included with the role. | [optional] 
**Tags** | **String[]** | Tags that have been applied to the object. | [optional] 
**Action** | **String** | Name of the event as it&#39;s displayed in audit reports. | [optional] 
**Stage** | **String** | Activity&#39;s current stage. | [optional] 
**Origin** | **String** | Activity&#39;s origin. | [optional] 
**Status** | **String** | Identity&#39;s status in SailPoint. | [optional] 
**Requester** | [**AccountSource**](AccountSource.md) |  | [optional] 
**Recipient** | [**AccountSource**](AccountSource.md) |  | [optional] 
**TrackingNumber** | **String** | ID of the group of events. | [optional] 
**Errors** | **String[]** | Errors provided by the source while completing account actions. | [optional] 
**Warnings** | **String[]** | Warnings provided by the source while completing account actions. | [optional] 
**Approvals** | [**Approval1[]**](Approval1.md) | Approvals performed on an item during activity. | [optional] 
**OriginalRequests** | [**OriginalRequest[]**](OriginalRequest.md) | Original actions that triggered all individual source actions related to the account action. | [optional] 
**ExpansionItems** | [**ExpansionItem[]**](ExpansionItem.md) | Controls that translated the attribute requests into actual provisioning actions on the source. | [optional] 
**AccountRequests** | [**AccountRequest[]**](AccountRequest.md) | Account data for each individual source action triggered by the original requests. | [optional] 
**Sources** | **String** | Sources involved in the account activity. | [optional] 
**DisplayName** | **String** | Identity&#39;s display name. | [optional] 
**Segments** | [**BaseSegment[]**](BaseSegment.md) | Segments with the role. | [optional] 
**SegmentCount** | **Int32** | Number of segments with the role. | [optional] 
**CloudGoverned** | **Boolean** | Indicates whether the entitlement is cloud governed. | [optional] [default to $false]
**Privileged** | **Boolean** | Indicates whether the entitlement is privileged. | [optional] [default to $false]
**IdentityCount** | **Int32** | Number of identities who have access to the entitlement. | [optional] 
**Type** | **String** | Event type. Refer to [Event Types](https://documentation.sailpoint.com/saas/help/search/index.html#event-types) for a list of event types and their meanings. | [optional] 
**Actor** | **String** | Name of the actor that generated the event. | [optional] 
**Target** | **String** | Name of the target, or recipient, of the event. | [optional] 
**Stack** | **String** | The event&#39;s stack. | [optional] 
**IpAddress** | **String** | Target system&#39;s IP address. | [optional] 
**Details** | **String** | ID of event&#39;s details. | [optional] 
**Attributes** | [**System.Collections.Hashtable**](AnyType.md) | Map or dictionary of key/value pairs. | [optional] 
**Objects** | **String[]** | Objects the event is happening to. | [optional] 
**Operation** | **String** | Operation, or action, performed during the event. | [optional] 
**TechnicalName** | **String** | Event&#39;s normalized name. This normalized name always follows the pattern of &#39;objects_operation_status&#39;. | [optional] 
**FirstName** | **String** | Identity&#39;s first name. | [optional] 
**LastName** | **String** | Identity&#39;s last name. | [optional] 
**Email** | **String** | Identity&#39;s primary email address. | [optional] 
**Phone** | **String** | Identity&#39;s phone number. | [optional] 
**Inactive** | **Boolean** | Indicates whether the identity is inactive. | [optional] [default to $false]
**Protected** | **Boolean** | Indicates whether the identity is protected. | [optional] [default to $false]
**EmployeeNumber** | **String** | Identity&#39;s employee number. | [optional] 
**Manager** | [**IdentityDocumentAllOfManager**](IdentityDocumentAllOfManager.md) |  | [optional] 
**IsManager** | **Boolean** | Indicates whether the identity is a manager of other identities. | [optional] 
**IdentityProfile** | [**IdentityDocumentAllOfIdentityProfile**](IdentityDocumentAllOfIdentityProfile.md) |  | [optional] 
**ProcessingState** | **String** | Identity&#39;s processing state. | [optional] 
**ProcessingDetails** | [**ProcessingDetails**](ProcessingDetails.md) |  | [optional] 
**Accounts** | [**BaseAccount[]**](BaseAccount.md) | List of accounts associated with the identity. | [optional] 
**AccountCount** | **Int32** | Number of accounts associated with the identity. | [optional] 
**Apps** | [**App[]**](App.md) | List of applications the identity has access to. | [optional] 
**AppCount** | **Int32** | Number of applications the identity has access to. | [optional] 
**Access** | [**IdentityAccess[]**](IdentityAccess.md) | List of access items assigned to the identity. | [optional] 
**AccessCount** | **Int32** | Number of access items assigned to the identity. | [optional] 
**RoleCount** | **Int32** | Number of roles assigned to the identity. | [optional] 
**AccessProfileCount** | **Int32** | Number of access profiles included with the role. | [optional] 
**Owns** | [**Owns[]**](Owns.md) | Access items the identity owns. | [optional] 
**OwnsCount** | **Int32** | Number of access items the identity owns. | [optional] 
**AccessProfiles** | [**BaseAccessProfile[]**](BaseAccessProfile.md) | Access profiles included with the role. | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchDocument = Initialize-Tm.V2024SearchDocument  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe `
 -Description The admin role `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Synced 2018-06-25T20:22:33.104Z `
 -Enabled true `
 -Requestable true `
 -RequestCommentsRequired false `
 -Owner null `
 -Type null `
 -Source null `
 -Entitlements null `
 -EntitlementCount 3 `
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
 -DisplayName Carol.Adams `
 -Segments null `
 -SegmentCount 1 `
 -CloudGoverned false `
 -Privileged false `
 -IdentityCount 3 `
 -Type SYSTEM_CONFIG `
 -Actor System `
 -Target Carol.Adams `
 -Stack tpe `
 -IpAddress 52.52.97.85 `
 -Details 73b65dfbed1842548c207432a18c84b0 `
 -Attributes {country&#x3D;US, firstname&#x3D;Carol, cloudStatus&#x3D;UNREGISTERED} `
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
 -Access null `
 -AccessCount 5 `
 -RoleCount 1 `
 -AccessProfileCount 1 `
 -Owns null `
 -OwnsCount 5 `
 -AccessProfiles null
```

- Convert the resource to JSON
```powershell
$SearchDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

