# TextQuery
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Terms** | **String[]** | Words or characters that specify a particular thing to be searched for. | 
**Fields** | **String[]** | The fields to be searched. | 
**MatchAny** | **Boolean** | Indicates that at least one of the terms must be found in the specified fields;  otherwise, all terms must be found. | [optional] [default to $false]
**Contains** | **Boolean** | Indicates that the terms can be located anywhere in the specified fields;  otherwise, the fields must begin with the terms. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$TextQuery = Initialize-Tm.V2024TextQuery  -Terms [The quick brown fox, 3141592, 7] `
 -Fields [displayName, employeeNumber, roleCount] `
 -MatchAny false `
 -Contains true
```

- Convert the resource to JSON
```powershell
$TextQuery | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

