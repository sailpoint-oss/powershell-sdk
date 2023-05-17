# Exception
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Id of a SOD exception. | [optional] 
**Created** | **System.DateTime** | The time when this SOD exception is created. | [optional] 
**Modified** | **System.DateTime** | The time when this SOD exception is modified. | [optional] 
**SodPolicy** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 
**Identity** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 
**Start** | **System.DateTime** | The earliest date-time when this SOD exception is applicable. | [optional] 
**VarEnd** | **System.DateTime** | The last date-time when this SOD exception is applicable. | [optional] 
**BusinessJustification** | **String** | The business justification for the exception. | [optional] 
**MitigatingControl** | **String** | The mitigating control for the exception. | [optional] 
**AccessCriteria** | [**ExceptionAccessCriteria**](ExceptionAccessCriteria.md) |  | [optional] 
**Origin** | [**BaseReferenceDto**](BaseReferenceDto.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Exception = Initialize-PSSailpointException  -Id 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
 -Created 2020-01-01T00:00Z `
 -Modified 2020-01-01T00:00Z `
 -SodPolicy null `
 -Identity null `
 -Start 2020-01-01T00:00Z `
 -VarEnd 2020-01-02T00:00Z `
 -BusinessJustification Bob (the accountant) is on vacation, Bill needs access to accounting data this week. `
 -MitigatingControl The manager will audit Bill&#39;s changes this week. `
 -AccessCriteria null `
 -Origin null
```

- Convert the resource to JSON
```powershell
$Exception | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

