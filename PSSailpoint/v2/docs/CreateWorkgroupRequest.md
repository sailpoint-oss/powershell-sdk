# CreateWorkgroupRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Owner** | [**CreateWorkgroupRequestOwner**](CreateWorkgroupRequestOwner.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateWorkgroupRequest = Initialize-V2CreateWorkgroupRequest  -Name Test group 3 `
 -Description This is a test `
 -Owner null
```

- Convert the resource to JSON
```powershell
$CreateWorkgroupRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

