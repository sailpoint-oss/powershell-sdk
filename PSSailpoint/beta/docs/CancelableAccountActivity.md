# CancelableAccountActivity
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the account activity itself | [optional] 
**Name** | **String** |  | [optional] 
**Created** | **System.DateTime** |  | [optional] 
**Modified** | **System.DateTime** |  | [optional] 
**Completed** | **System.DateTime** |  | [optional] 
**CompletionStatus** | [**CompletionStatus**](CompletionStatus.md) |  | [optional] 
**Type** | **String** |  | [optional] 
**RequesterIdentitySummary** | [**IdentitySummary**](IdentitySummary.md) |  | [optional] 
**TargetIdentitySummary** | [**IdentitySummary**](IdentitySummary.md) |  | [optional] 
**Errors** | **String[]** |  | [optional] 
**Warnings** | **String[]** |  | [optional] 
**Items** | [**AccountActivityItem[]**](AccountActivityItem.md) |  | [optional] 
**ExecutionStatus** | [**ExecutionStatus**](ExecutionStatus.md) |  | [optional] 
**ClientMetadata** | **System.Collections.Hashtable** | Arbitrary key-value pairs, if any were included in the corresponding access request | [optional] 
**Cancelable** | **Boolean** | Whether the account activity can be canceled before completion | [optional] 
**CancelComment** | [**Comment**](Comment.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CancelableAccountActivity = Initialize-BetaCancelableAccountActivity  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Name 2c9180835d2e5168015d32f890ca1581 `
 -Created 2017-07-11T18:45:37.098Z `
 -Modified 2018-06-25T20:22:28.104Z `
 -Completed 2018-10-19T13:49:37.385Z `
 -CompletionStatus null `
 -Type appRequest `
 -RequesterIdentitySummary null `
 -TargetIdentitySummary null `
 -Errors [sailpoint.connector.ConnectorException: java.lang.InterruptedException: Timeout waiting for response to message 0 from client 57a4ab97-ab3f-4aef-9fe2-0eaf15c73d26 after 60 seconds.] `
 -Warnings null `
 -Items null `
 -ExecutionStatus null `
 -ClientMetadata null `
 -Cancelable null `
 -CancelComment null
```

- Convert the resource to JSON
```powershell
$CancelableAccountActivity | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

