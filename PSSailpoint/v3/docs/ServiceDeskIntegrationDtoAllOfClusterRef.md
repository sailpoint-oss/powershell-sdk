# ServiceDeskIntegrationDtoAllOfClusterRef
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type of object being referenced | [optional] 
**Id** | **String** | ID of the cluster | [optional] 
**Name** | **String** | Human-readable display name of the cluster | [optional] 

## Examples

- Prepare the resource
```powershell
$ServiceDeskIntegrationDtoAllOfClusterRef = Initialize-PSSailpointServiceDeskIntegrationDtoAllOfClusterRef  -Type CLUSTER `
 -Id 2c9180866166b5b0016167c32ef31a66 `
 -Name Corporate Cluster
```

- Convert the resource to JSON
```powershell
$ServiceDeskIntegrationDtoAllOfClusterRef | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

