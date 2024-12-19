# CorrelationConfigAttributeAssignmentsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Property** | **String** | The property of the attribute assignment. | [optional] 
**Value** | **String** | The value of the attribute assignment. | [optional] 
**Operation** | **String** | The operation of the attribute assignment. | [optional] 
**Complex** | **Boolean** | Whether or not the it&#39;s a complex attribute assignment. | [optional] [default to $false]
**IgnoreCase** | **Boolean** | Whether or not the attribute assignment should ignore case. | [optional] [default to $false]
**MatchMode** | **String** | The match mode of the attribute assignment. | [optional] 
**FilterString** | **String** | The filter string of the attribute assignment. | [optional] 

## Examples

- Prepare the resource
```powershell
$CorrelationConfigAttributeAssignmentsInner = Initialize-PSSailpoint.V2024CorrelationConfigAttributeAssignmentsInner  -Property first_name `
 -Value firstName `
 -Operation EQ `
 -Complex false `
 -IgnoreCase false `
 -MatchMode ANYWHERE `
 -FilterString first_name &#x3D;&#x3D; &quot;John&quot;
```

- Convert the resource to JSON
```powershell
$CorrelationConfigAttributeAssignmentsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

