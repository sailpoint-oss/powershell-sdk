# TemplateDtoDefault
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The key of the default template | [optional] 
**Name** | **String** | The name of the default template | [optional] 
**Medium** | **String** | The message medium. More mediums may be added in the future. | [optional] 
**Locale** | **String** | The locale for the message text, a BCP 47 language tag. | [optional] 
**Subject** | **String** | The subject of the default template | [optional] 
**Header** | **String** | The header value is now located within the body field. If included with non-null values, will result in a 400. | [optional] 
**Body** | **String** | The body of the default template | [optional] 
**Footer** | **String** | The footer value is now located within the body field. If included with non-null values, will result in a 400. | [optional] 
**VarFrom** | **String** | The &quot;&quot;From:&quot;&quot; address of the default template | [optional] 
**ReplyTo** | **String** | The &quot;&quot;Reply To&quot;&quot; field of the default template | [optional] 
**Description** | **String** | The description of the default template | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateDtoDefault = Initialize-BetaTemplateDtoDefault  -Key cloud_manual_work_item_summary `
 -Name Task Manager Subscription `
 -Medium EMAIL `
 -Locale en `
 -Subject You have $numberOfPendingTasks $taskTasks to complete in ${__global.productName}. `
 -Header null `
 -Body Please go to the task manager `
 -Footer null `
 -VarFrom $__global.emailFromAddress `
 -ReplyTo $__global.emailFromAddress `
 -Description Daily digest - sent if number of outstanding tasks for task owner &gt; 0
```

- Convert the resource to JSON
```powershell
$TemplateDtoDefault | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

