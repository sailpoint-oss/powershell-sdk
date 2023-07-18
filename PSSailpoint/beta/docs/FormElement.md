# FormElement
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | [**System.Collections.Hashtable**](SystemCollectionsHashtable.md) | Config is a config object | [optional] 
**ElementType** | **String** | ElementType is a FormElementType value TEXT FormElementTypeText TOGGLE FormElementTypeToggle TEXTAREA FormElementTypeTextArea HIDDEN FormElementTypeHidden PHONE FormElementTypePhone EMAIL FormElementTypeEmail SELECT FormElementTypeSelect DATE FormElementTypeDate SECTION FormElementTypeSection COLUMNS FormElementTypeColumns | [optional] 
**Id** | **String** | ID is a form element identifier | [optional] 
**Key** | **String** | Key is the technical key | [optional] 
**Validations** | [**SystemCollectionsHashtable**](.md) | FormElementValidationsSet is a set of FormElementValidation items | [optional] 

## Examples

- Prepare the resource
```powershell
$FormElement = Initialize-PSSailpointBetaFormElement  -Config {label&#x3D;Department} `
 -ElementType TEXT `
 -Id 00000000-0000-0000-0000-000000000000 `
 -Key department `
 -Validations [{validationType&#x3D;REQUIRED}]
```

- Convert the resource to JSON
```powershell
$FormElement | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

