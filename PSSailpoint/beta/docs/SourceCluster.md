# SourceCluster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Type of object being referenced. | 
**Id** | **String** | Cluster ID. | 
**Name** | **String** | Cluster&#39;s human-readable display name. | 

## Examples

- Prepare the resource
```powershell
$SourceCluster = Initialize-PSSailpoint.BetaSourceCluster  -Type CLUSTER `
 -Id 2c9180866166b5b0016167c32ef31a66 `
 -Name Corporate Cluster
```

- Convert the resource to JSON
```powershell
$SourceCluster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

