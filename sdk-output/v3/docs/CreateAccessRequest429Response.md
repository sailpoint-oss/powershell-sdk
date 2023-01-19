# CreateAccessRequest429Response
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**SystemCollectionsHashtable**](.md) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateAccessRequest429Response = Initialize-PSSailpointCreateAccessRequest429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$CreateAccessRequest429Response | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

