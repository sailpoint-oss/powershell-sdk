# ListWorkgroupMembers200ResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Workgroup member identity DTO type. | [optional] 
**Id** | **String** | Workgroup member identity ID. | [optional] 
**Name** | **String** | Workgroup member identity display name. | [optional] 
**Email** | **String** | Workgroup member identity email. | [optional] 

## Examples

- Prepare the resource
```powershell
$ListWorkgroupMembers200ResponseInner = Initialize-PSSailpoint.V2024ListWorkgroupMembers200ResponseInner  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels `
 -Email michael.michaels@sailpoint.com
```

- Convert the resource to JSON
```powershell
$ListWorkgroupMembers200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

