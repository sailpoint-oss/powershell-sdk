# CertificationTask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the certification task. | [optional] 
**Type** | **String** | The type of the certification task. More values may be added in the future. | [optional] 
**TargetType** | **String** | The type of item that is being operated on by this task whose ID is stored in the targetId field. | [optional] 
**TargetId** | **String** | The ID of the item being operated on by this task. | [optional] 
**Status** | **String** | The status of the task. | [optional] 
**Errors** | [**ErrorMessageDto[]**](ErrorMessageDto.md) |  | [optional] 
**Created** | **System.DateTime** | The date and time on which this task was created. | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationTask = Initialize-BetaCertificationTask  -Id 2c918086719eec070171a7e3355a360a `
 -Type ADMIN_REASSIGN `
 -TargetType CAMPAIGN `
 -TargetId 2c918086719eec070171a7e3355a834c `
 -Status null `
 -Errors null `
 -Created 2020-09-24T18:10:47.693Z
```

- Convert the resource to JSON
```powershell
$CertificationTask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

