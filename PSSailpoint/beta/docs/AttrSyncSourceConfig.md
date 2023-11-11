# AttrSyncSourceConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | [**AttrSyncSource**](AttrSyncSource.md) |  | 
**Attributes** | [**AttrSyncSourceAttributeConfig[]**](AttrSyncSourceAttributeConfig.md) | Attribute synchronization configuration for specific identity attributes in the context of a source | 

## Examples

- Prepare the resource
```powershell
$AttrSyncSourceConfig = Initialize-BetaAttrSyncSourceConfig  -Source null `
 -Attributes [{name&#x3D;email, displayName&#x3D;Email, enabled&#x3D;true, target&#x3D;mail}, {name&#x3D;firstname, displayName&#x3D;First Name, enabled&#x3D;false, target&#x3D;givenName}]
```

- Convert the resource to JSON
```powershell
$AttrSyncSourceConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

