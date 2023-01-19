# CreateAccessRequest401Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**](.md) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAccessRequest401Response = Initialize-PSSailpointCreateAccessRequest401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$CreateAccessRequest401Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

