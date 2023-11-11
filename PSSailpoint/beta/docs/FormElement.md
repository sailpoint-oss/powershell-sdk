# FormElement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Form element identifier. | [optional] 
**ElementType** | **String** | FormElementType value.  TEXT FormElementTypeText TOGGLE FormElementTypeToggle TEXTAREA FormElementTypeTextArea HIDDEN FormElementTypeHidden PHONE FormElementTypePhone EMAIL FormElementTypeEmail SELECT FormElementTypeSelect DATE FormElementTypeDate SECTION FormElementTypeSection COLUMNS FormElementTypeColumns | [optional] 
**Config** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | Config object. | [optional] 
**Key** | **String** | Technical key. | [optional] 
**Validations** | [**SystemCollectionsHashtable**](.md) | Set of FormElementValidation items. | [optional] 

## Examples

- Prepare the resource
```powershell
$FormElement = Initialize-BetaFormElement  -Id 00000000-0000-0000-0000-000000000000 `
 -ElementType TEXT `
 -Config {label&#x3D;Department} `
 -Key department `
 -Validations [{validationType&#x3D;REQUIRED}]
```

- Convert the resource to JSON
```powershell
$FormElement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

