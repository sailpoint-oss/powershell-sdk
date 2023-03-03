# TemplateDtoDefault
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Medium** | **String** | The message medium. More mediums may be added in the future. | [optional] 
**Locale** | **String** | The locale for the message text, a BCP 47 language tag. | [optional] 
**Subject** | **String** |  | [optional] 
**Header** | **String** |  | [optional] 
**Body** | **String** |  | [optional] 
**Footer** | **String** |  | [optional] 
**VarFrom** | **String** |  | [optional] 
**ReplyTo** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateDtoDefault = Initialize-PSSailpointBetaTemplateDtoDefault  -Key cloud_manual_work_item_summary `
 -Name Task Manager Subscription `
 -Medium EMAIL `
 -Locale en `
 -Subject You have $numberOfPendingTasks $taskTasks to complete in ${__global.productName}. `
 -Header Dear $__recipient.name, `
 -Body Please go to the task manager `
 -Footer Thanks, The $__global.productName Team `
 -VarFrom $__global.emailFromAddress `
 -ReplyTo $__global.emailFromAddress `
 -Description Daily digest - sent if number of outstanding tasks for task owner &gt; 0
```

- Convert the resource to JSON
```powershell
$TemplateDtoDefault | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

