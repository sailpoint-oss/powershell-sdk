# AccountAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | **String** | Describes if action will be enabled or disabled | [optional] 
**SourceIds** | **String[]** | List of source IDs. The sources must have the ENABLE feature or flat file source. See &quot;&quot;/sources&quot;&quot; endpoint for source features. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountAction = Initialize-BetaAccountAction  -Action ENABLE `
 -SourceIds [2c918084660f45d6016617daa9210584, 2c918084660f45d6016617daa9210500]
```

- Convert the resource to JSON
```powershell
$AccountAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

