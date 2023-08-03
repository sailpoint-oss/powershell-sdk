# TextQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Terms** | **String[]** | Words or characters that specify a particular thing to be searched for. | 
**Fields** | **String[]** | The fields to be searched. | 
**MatchAny** | **Boolean** | Indicates if a match was found. | [optional] [default to $false]
**Contains** | **Boolean** | Indicates if the search contained a field. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$TextQuery = Initialize-PSSailpointTextQuery  -Terms null `
 -Fields null `
 -MatchAny false `
 -Contains true
```

- Convert the resource to JSON
```powershell
$TextQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

