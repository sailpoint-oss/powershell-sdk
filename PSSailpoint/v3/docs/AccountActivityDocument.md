# AccountActivityDocument
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | 
**Name** | **String** |  | 
**Type** | [**DocumentType**](DocumentType.md) |  | 
**Action** | **String** | Type of action performed in the activity. | [optional] 
**Created** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was created. | [optional] 
**Modified** | **System.DateTime** | ISO-8601 date-time referring to the time when the object was last modified. | [optional] 
**Stage** | **String** | Activity&#39;s current stage. | [optional] 
**Origin** | **String** | Activity&#39;s origin. | [optional] 
**Status** | **String** | Activity&#39;s current status. | [optional] 
**Requester** | [**AccountSource**](AccountSource.md) |  | [optional] 
**Recipient** | [**AccountSource**](AccountSource.md) |  | [optional] 
**TrackingNumber** | **String** | Account activity&#39;s tracking number. | [optional] 
**Errors** | **String[]** | Errors provided by the source while completing account actions. | [optional] 
**Warnings** | **String[]** | Warnings provided by the source while completing account actions. | [optional] 
**Approvals** | [**Approval[]**](Approval.md) | Approvals performed on an item during activity. | [optional] 
**OriginalRequests** | [**OriginalRequest[]**](OriginalRequest.md) | Original actions that triggered all individual source actions related to the account action. | [optional] 
**ExpansionItems** | [**ExpansionItem[]**](ExpansionItem.md) | Controls that translated the attribute requests into actual provisioning actions on the source. | [optional] 
**AccountRequests** | [**AccountRequest[]**](AccountRequest.md) | Account data for each individual source action triggered by the original requests. | [optional] 
**Sources** | **String** | Sources involved in the account activity. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountActivityDocument = Initialize-PSSailpoint.V3AccountActivityDocument  -Id 2c91808375d8e80a0175e1f88a575222 `
 -Name john.doe `
 -Type null `
 -Action Identity Refresh. `
 -Created 2018-06-25T20:22:28.104Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Stage Completed `
 -Origin null `
 -Status Complete `
 -Requester null `
 -Recipient null `
 -TrackingNumber 61aad0c9e8134eca89e76a35e0cabe3f `
 -Errors null `
 -Warnings null `
 -Approvals null `
 -OriginalRequests null `
 -ExpansionItems null `
 -AccountRequests null `
 -Sources smartsheet-test, airtable-v4, IdentityNow
```

- Convert the resource to JSON
```powershell
$AccountActivityDocument | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

