# BaseAccessAllOfOwner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Owner&#39;s DTO type. | [optional] 
**Id** | **String** | Owner&#39;s identity ID. | [optional] 
**Name** | **String** | Owner&#39;s display name. | [optional] 
**Email** | **String** | Owner&#39;s email. | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseAccessAllOfOwner = Initialize-Tm.V3BaseAccessAllOfOwner  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Support `
 -Email cloud-support@sailpoint.com
```

- Convert the resource to JSON
```powershell
$BaseAccessAllOfOwner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

