# ErrorMessageDto1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locale** | **String** | The locale for the message text, a BCP 47 language tag. | [optional] 
**LocaleOrigin** | [**LocaleOrigin**](LocaleOrigin.md) |  | [optional] 
**Text** | **String** | Actual text of the error message in the indicated locale. | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorMessageDto1 = Initialize-PSSailpoint.V2024ErrorMessageDto1  -Locale en-US `
 -LocaleOrigin null `
 -Text The request was syntactically correct but its content is semantically invalid.
```

- Convert the resource to JSON
```powershell
$ErrorMessageDto1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

