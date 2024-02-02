# EntitlementDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Modified** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was last modified. | [optional] 
**Synced** | **String** | ISO-8601 date-time referring to the date-time when object was queued to be synced into search database for use in the search API.   This date-time changes anytime there is an update to the object, which triggers a synchronization event being sent to the search database.  There may be some delay between the &#x60;synced&#x60; time and the time when the updated data is actually available in the search API.  | [optional] 
**DisplayName** | **String** | Entitlement&#39;s display name. | [optional] 
**Source** | [**EntitlementDocumentAllOfSource**](EntitlementDocumentAllOfSource.md) |  | [optional] 
**Segments** | [**BaseSegment[]**](BaseSegment.md) | Segments with the role. | [optional] 
**SegmentCount** | **Int32** | Number of segments with the role. | [optional] 
**Requestable** | **Boolean** | Indicates whether the entitlement is requestable. | [optional] [default to $false]
**CloudGoverned** | **Boolean** | Indicates whether the entitlement is cloud governed. | [optional] [default to $false]
**Created** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was created. | [optional] 
**Privileged** | **Boolean** | Indicates whether the entitlement is privileged. | [optional] [default to $false]
**IdentityCount** | **Int32** | Number of identities who have access to the entitlement. | [optional] 
**Tags** | **String[]** | Tags that have been applied to the object. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementDocument = Initialize-PSSailpointEntitlementDocument  -Id 2c91808375d8e80a0175e1f88a575222 `
 -Name john.doe `
 -Type null `
 -Modified 2018-06-25T20:22:28.104Z `
 -Synced null `
 -DisplayName Admin `
 -Source null `
 -Segments null `
 -SegmentCount 1 `
 -Requestable false `
 -CloudGoverned false `
 -Created 2018-06-25T20:22:28.104Z `
 -Privileged false `
 -IdentityCount 3 `
 -Tags [TAG_1, TAG_2]
```

- Convert the resource to JSON
```powershell
$EntitlementDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

