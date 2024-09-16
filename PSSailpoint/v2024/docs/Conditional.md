# Conditional
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Expression** | **String** | A comparison statement that follows the structure of &#x60;ValueA eq ValueB&#x60; where &#x60;ValueA&#x60; and &#x60;ValueB&#x60; are static strings or outputs of other transforms.   The &#x60;eq&#x60; operator is the only valid comparison | 
**PositiveCondition** | **String** | The output of the transform if the expression evalutes to true | 
**NegativeCondition** | **String** | The output of the transform if the expression evalutes to false | 
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**System.Collections.Hashtable**](AnyType.md) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$Conditional = Initialize-PSSailpoint.V2024Conditional  -Expression ValueA eq ValueB `
 -PositiveCondition true `
 -NegativeCondition false `
 -RequiresPeriodicRefresh false `
 -VarInput {type&#x3D;accountAttribute, attributes&#x3D;{attributeName&#x3D;first_name, sourceName&#x3D;Source}}
```

- Convert the resource to JSON
```powershell
$Conditional | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

