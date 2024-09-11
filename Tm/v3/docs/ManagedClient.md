# ManagedClient
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ManagedClient ID | [optional] [readonly] 
**AlertKey** | **String** | ManagedClient alert key | [optional] [readonly] 
**ApiGatewayBaseUrl** | **String** |  | [optional] 
**Cookbook** | **String** |  | [optional] 
**CcId** | **Int64** | Previous CC ID to be used in data migration. (This field will be deleted after CC migration!) | [optional] 
**ClientId** | **String** | The client ID used in API management | 
**ClusterId** | **String** | Cluster ID that the ManagedClient is linked to | 
**Description** | **String** | ManagedClient description | [default to ""]
**IpAddress** | **String** | The public IP address of the ManagedClient | [optional] [readonly] 
**LastSeen** | **System.DateTime** | When the ManagedClient was last seen by the server | [optional] [readonly] 
**Name** | **String** | ManagedClient name | [optional] [default to "VA-$clientId"]
**SinceLastSeen** | **String** | Milliseconds since the ManagedClient has polled the server | [optional] [readonly] 
**Status** | **String** | Status of the ManagedClient | [optional] [readonly] 
**Type** | **String** | Type of the ManagedClient (VA, CCG) | 
**ClusterType** | **String** | Cluster Type of the ManagedClient | [optional] [readonly] 
**VaDownloadUrl** | **String** | ManagedClient VA download URL | [optional] [readonly] 
**VaVersion** | **String** | Version that the ManagedClient&#39;s VA is running | [optional] [readonly] 
**Secret** | **String** | Client&#39;s apiKey | [optional] 
**CreatedAt** | **System.DateTime** | The date/time this ManagedClient was created | [optional] 
**UpdatedAt** | **System.DateTime** | The date/time this ManagedClient was last updated | [optional] 
**ProvisionStatus** | **String** | The provisioning status of the ManagedClient | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$ManagedClient = Initialize-Tm.V3ManagedClient  -Id 2c9180878eaf4204018eb019c3570003 `
 -AlertKey CLIENT_STATUS_NOT_CONFIGURED `
 -ApiGatewayBaseUrl null `
 -Cookbook null `
 -CcId 2248 `
 -ClientId 00be54a2-bb6d-402f-9159-beb2d5319347 `
 -ClusterId e1ff7bb24c934240bbf55e1aa39e41c5 `
 -Description A short description of the ManagedClient `
 -IpAddress 123.456.78.90 `
 -LastSeen 2020-01-01T00:00Z `
 -Name aName `
 -SinceLastSeen 15000 `
 -Status NORMAL `
 -Type VA `
 -ClusterType idn `
 -VaDownloadUrl aUrl `
 -VaVersion va-megapod-useast1-610-1621372012 `
 -Secret ef878e15eaa8c8d3e2fa52f41125e2a0eeadadc6a14f931a33ad3e1b62d56381 `
 -CreatedAt 2023-08-04T20:48:01.865Z `
 -UpdatedAt 2023-08-04T20:48:01.865Z `
 -ProvisionStatus PROVISIONED
```

- Convert the resource to JSON
```powershell
$ManagedClient | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

