# RequestOnBehalfOfConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowRequestOnBehalfOfAnyoneByAnyone** | **Boolean** | If anyone can request access for anyone. | [optional] 
**AllowRequestOnBehalfOfEmployeeByManager** | **Boolean** | If a manager can request access for his/her direct reports. | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestOnBehalfOfConfig = Initialize-RequestOnBehalfOfConfig  -AllowRequestOnBehalfOfAnyoneByAnyone true `
 -AllowRequestOnBehalfOfEmployeeByManager true
```

- Convert the resource to JSON
```powershell
$RequestOnBehalfOfConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

