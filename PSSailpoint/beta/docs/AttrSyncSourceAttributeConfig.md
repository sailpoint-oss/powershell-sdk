# AttrSyncSourceAttributeConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the identity attribute | 
**DisplayName** | **String** | Display name of the identity attribute | 
**Enabled** | **Boolean** | Determines whether or not the attribute is enabled for synchronization | 
**Target** | **String** | Name of the source account attribute to which the identity attribute value will be synchronized if enabled | 

## Examples

- Prepare the resource
```powershell
$AttrSyncSourceAttributeConfig = Initialize-BetaAttrSyncSourceAttributeConfig  -Name email `
 -DisplayName Email `
 -Enabled true `
 -Target mail
```

- Convert the resource to JSON
```powershell
$AttrSyncSourceAttributeConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

