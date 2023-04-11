# UpdateClusterRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the cluster to update | [optional] 
**GmtOffset** | **String** | The GMT offset for the timezone the cluster operates with | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateClusterRequest = Initialize-PSSailpointCCUpdateClusterRequest  -Id 1092 `
 -GmtOffset -6
```

- Convert the resource to JSON
```powershell
$UpdateClusterRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

