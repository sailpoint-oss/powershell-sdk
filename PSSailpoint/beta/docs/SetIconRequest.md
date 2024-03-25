# SetIconRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Image** | **System.IO.FileInfo** | file with icon. Allowed mime-types [&#39;image/png&#39;, &#39;image/jpeg&#39;] | 

## Examples

- Prepare the resource
```powershell
$SetIconRequest = Initialize-PSSailpointBetaSetIconRequest  -Image \x00\x00\x00\x02
```

- Convert the resource to JSON
```powershell
$SetIconRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

