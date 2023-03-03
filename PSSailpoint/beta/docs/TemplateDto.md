# TemplateDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | 
**Name** | **String** |  | [optional] 
**Medium** | **String** | The message medium. More mediums may be added in the future. | 
**Locale** | **String** | The locale for the message text, a BCP 47 language tag. | 
**Subject** | **String** |  | [optional] 
**Header** | **String** |  | [optional] 
**Body** | **String** |  | [optional] 
**Footer** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**ReplyTo** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Id** | **String** | This is auto-generated. | [optional] 
**Created** | **System.DateTime** | The time when this template is created. This is auto-generated. | [optional] 
**Modified** | **System.DateTime** | The time when this template was last modified. This is auto-generated. | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateDto = Initialize-PSSailpointBetaTemplateDto  -Key cloud_manual_work_item_summary `
 -Name Task Manager Subscription `
 -Medium EMAIL `
 -Locale en `
 -Subject You have $numberOfPendingTasks $taskTasks to complete in ${__global.productName}. `
 -Header Dear $__recipient.name, `
 -Body Please go to the task manager `
 -Footer Thanks, The $__global.productName Team `
 -VarFrom $__global.emailFromAddress `
 -ReplyTo $__global.emailFromAddress `
 -Description Daily digest - sent if number of outstanding tasks for task owner &gt; 0 `
 -Id c17bea3a-574d-453c-9e04-4365fbf5af0b `
 -Created 2020-01-01T00:00Z `
 -Modified 2020-01-01T00:00Z
```

- Convert the resource to JSON
```powershell
$TemplateDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

