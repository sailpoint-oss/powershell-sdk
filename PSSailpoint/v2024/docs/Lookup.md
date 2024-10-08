# Lookup
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Table** | [**System.Collections.Hashtable**](AnyType.md) | This is a JSON object of key-value pairs. The key is the string that will attempt to be matched to the input, and the value is the output string that should be returned if the key is matched   &gt;**Note** the use of the optional default key value here; if none of the three countries in the above example match the input string, the transform will return &quot;&quot;Unknown Region&quot;&quot; for the attribute that is mapped to this transform.  | 
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**System.Collections.Hashtable**](AnyType.md) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$Lookup = Initialize-PSSailpoint.V2024Lookup  -Table {USA&#x3D;Americas, FRA&#x3D;EMEA, AUS&#x3D;APAC, default&#x3D;Unknown Region} `
 -RequiresPeriodicRefresh false `
 -VarInput {type&#x3D;accountAttribute, attributes&#x3D;{attributeName&#x3D;first_name, sourceName&#x3D;Source}}
```

- Convert the resource to JSON
```powershell
$Lookup | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

