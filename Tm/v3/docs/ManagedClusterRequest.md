# ManagedClusterRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | ManagedCluster name | 
**Type** | [**ManagedClusterTypes**](ManagedClusterTypes.md) |  | [optional] 
**Configuration** | **System.Collections.Hashtable** | ManagedProcess configuration map | [optional] 
**Description** | **String** | ManagedCluster description | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagedClusterRequest = Initialize-Tm.V3ManagedClusterRequest  -Name Managed Cluster Name `
 -Type null `
 -Configuration {clusterExternalId&#x3D;externalId, ccgVersion&#x3D;77.0.0} `
 -Description A short description of the managed cluster.
```

- Convert the resource to JSON
```powershell
$ManagedClusterRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

