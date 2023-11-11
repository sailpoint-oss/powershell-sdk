# ListWorkgroupMembers200ResponseInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Alias** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**ExternalId** | **String** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListWorkgroupMembers200ResponseInner = Initialize-V2ListWorkgroupMembers200ResponseInner  -Alias Jerry.Bennett `
 -Email Jerry.Bennett@sailpointdemo.com `
 -ExternalId 2c9180837dfe6949017e208e26027b23 `
 -Id 3497959 `
 -Name Jerry.Bennett
```

- Convert the resource to JSON
```powershell
$ListWorkgroupMembers200ResponseInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

