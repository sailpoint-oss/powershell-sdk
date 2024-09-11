# ManagedClientStatus
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Body** | [**SystemCollectionsHashtable**](.md) | ManagedClientStatus body information | 
**Status** | [**ManagedClientStatusCode**](ManagedClientStatusCode.md) |  | 
**Type** | [**ManagedClientType**](ManagedClientType.md) |  | 
**Timestamp** | **System.DateTime** | timestamp on the Client Status update | 

## Examples

- Prepare the resource
```powershell
$ManagedClientStatus = Initialize-Tm.V3ManagedClientStatus  -Body {alertKey&#x3D;, id&#x3D;5678, clusterId&#x3D;1234, ccg_etag&#x3D;ccg_etag123xyz456, ccg_pin&#x3D;NONE, cookbook_etag&#x3D;20210420125956-20210511144538, hostname&#x3D;megapod-useast1-secret-hostname.sailpoint.com, internal_ip&#x3D;127.0.0.1, lastSeen&#x3D;1620843964604, sinceSeen&#x3D;14708, sinceSeenMillis&#x3D;14708, localDev&#x3D;false, stacktrace&#x3D;, state&#x3D;null, status&#x3D;NORMAL, uuid&#x3D;null, product&#x3D;idn, va_version&#x3D;null, platform_version&#x3D;2, os_version&#x3D;2345.3.1, os_type&#x3D;flatcar, hypervisor&#x3D;unknown} `
 -Status null `
 -Type null `
 -Timestamp 2020-01-01T00:00Z
```

- Convert the resource to JSON
```powershell
$ManagedClientStatus | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

