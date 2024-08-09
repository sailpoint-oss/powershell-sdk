# DateCompare
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FirstDate** | [**DateCompareFirstDate**](DateCompareFirstDate.md) |  | 
**SecondDate** | [**DateCompareSecondDate**](DateCompareSecondDate.md) |  | 
**Operator** | **String** | This is the comparison to perform. | Operation | Description | | --------- | ------- | | LT        | Strictly less than: firstDate &lt; secondDate | | LTE       | Less than or equal to: firstDate &lt;&#x3D; secondDate | | GT        | Strictly greater than: firstDate &gt; secondDate | | GTE       | Greater than or equal to: firstDate &gt;&#x3D; secondDate |  | 
**PositiveCondition** | **String** | The output of the transform if the expression evalutes to true | 
**NegativeCondition** | **String** | The output of the transform if the expression evalutes to false | 
**RequiresPeriodicRefresh** | **Boolean** | A value that indicates whether the transform logic should be re-evaluated every evening as part of the identity refresh process | [optional] [default to $false]
**VarInput** | [**System.Collections.Hashtable**](AnyType.md) | This is an optional attribute that can explicitly define the input data which will be fed into the transform logic. If input is not provided, the transform will take its input from the source and attribute combination configured via the UI. | [optional] 

## Examples

- Prepare the resource
```powershell
$DateCompare = Initialize-PSSailpointV2024DateCompare  -FirstDate null `
 -SecondDate null `
 -Operator LT `
 -PositiveCondition true `
 -NegativeCondition false `
 -RequiresPeriodicRefresh false `
 -VarInput {type&#x3D;accountAttribute, attributes&#x3D;{attributeName&#x3D;first_name, sourceName&#x3D;Source}}
```

- Convert the resource to JSON
```powershell
$DateCompare | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
