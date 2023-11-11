# AccountAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**SystemCollectionsHashtable**](.md) | The schema attribute values for the account | 

## Examples

- Prepare the resource
```powershell
$AccountAttributes = Initialize-BetaAccountAttributes  -Attributes {city&#x3D;Austin, displayName&#x3D;John Doe, userName&#x3D;jdoe, sAMAccountName&#x3D;jDoe, mail&#x3D;john.doe@sailpoint.com}
```

- Convert the resource to JSON
```powershell
$AccountAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

