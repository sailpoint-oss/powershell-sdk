# RightPad
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Length** | **String** | An integer value for the desired length of the final output string | 
**Padding** | **String** | A string value representing the character that the incoming data should be padded with to get to the desired length   If not provided, the transform will default to a single space (&quot;&quot; &quot;&quot;) character for padding  | [optional] 
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**System.Collections.Hashtable**](AnyType.md) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$RightPad = Initialize-PSSailpoint.V3RightPad  -Length 4 `
 -Padding 0 `
 -RequiresPeriodicRefresh false `
 -VarInput {type&#x3D;accountAttribute, attributes&#x3D;{attributeName&#x3D;first_name, sourceName&#x3D;Source}}
```

- Convert the resource to JSON
```powershell
$RightPad | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

