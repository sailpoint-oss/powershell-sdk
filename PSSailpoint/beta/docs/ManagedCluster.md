# ManagedCluster
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ManagedCluster ID | 
**Name** | **String** | ManagedCluster name | [optional] 
**Pod** | **String** | ManagedCluster pod | [optional] 
**Org** | **String** | ManagedCluster org | [optional] 
**Type** | [**ManagedClusterTypes**](ManagedClusterTypes.md) |  | [optional] 
**Configuration** | **System.Collections.Hashtable** | ManagedProcess configuration map | [optional] 
**KeyPair** | [**ManagedClusterKeyPair**](ManagedClusterKeyPair.md) |  | [optional] 
**Attributes** | [**ManagedClusterAttributes**](ManagedClusterAttributes.md) |  | [optional] 
**Description** | **String** | ManagedCluster description | [optional] 
**Redis** | [**ManagedClusterRedis**](ManagedClusterRedis.md) |  | [optional] 
**ClientType** | [**ManagedClientType**](ManagedClientType.md) |  | 
**CcgVersion** | **String** | CCG version used by the ManagedCluster | 
**PinnedConfig** | **Boolean** | boolean flag indiacting whether or not the cluster configuration is pinned | [optional] [default to $false]
**LogConfiguration** | [**ClientLogConfiguration**](ClientLogConfiguration.md) |  | [optional] 
**Operational** | **Boolean** | Whether or not the cluster is operational or not | [optional] [default to $false]
**Status** | **String** | Cluster status | [optional] 
**PublicKeyCertificate** | **String** | Public key certificate | [optional] 
**PublicKeyThumbprint** | **String** | Public key thumbprint | [optional] 
**PublicKey** | **String** | Public key | [optional] 
**AlertKey** | **String** | Key describing any immediate cluster alerts | [optional] 
**ClientIds** | **String[]** | List of clients in a cluster | [optional] 
**ServiceCount** | **Int32** | Number of services bound to a cluster | [optional] [default to 0]
**CcId** | **String** | CC ID only used in calling CC, will be removed without notice when Migration to CEGS is finished | [optional] [default to "0"]

## Examples

- Prepare the resource
```powershell
$ManagedCluster = Initialize-BetaManagedCluster  -Id aClusterId `
 -Name Managed Cluster Name `
 -Pod megapod-useast1 `
 -Org denali `
 -Type null `
 -Configuration {clusterExternalId&#x3D;externalId, ccgVersion&#x3D;77.0.0} `
 -KeyPair null `
 -Attributes null `
 -Description A short description of the managed cluster. `
 -Redis null `
 -ClientType null `
 -CcgVersion v01 `
 -PinnedConfig false `
 -LogConfiguration null `
 -Operational false `
 -Status NORMAL `
 -PublicKeyCertificate -----BEGIN CERTIFICATE-----TCCAb2gAwIBAgIBADANBgkqhkiG9w0BAQsFADAuMQ0wCwYDVQQD-----END CERTIFICATE----- `
 -PublicKeyThumbprint obc6pLiulGbtZ `
 -PublicKey -----BEGIN PUBLIC KEY-----jANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA3WgnsxP52MDgBTfHR+5n4-----END PUBLIC KEY----- `
 -AlertKey LIMITED_RESOURCES `
 -ClientIds [1244, 1245] `
 -ServiceCount 6 `
 -CcId 1533
```

- Convert the resource to JSON
```powershell
$ManagedCluster | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

