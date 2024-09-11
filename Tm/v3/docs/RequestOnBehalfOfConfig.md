# RequestOnBehalfOfConfig
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowRequestOnBehalfOfAnyoneByAnyone** | **Boolean** | If this is true, anyone can request access for anyone. | [optional] [default to $false]
**AllowRequestOnBehalfOfEmployeeByManager** | **Boolean** | If this is true, a manager can request access for his or her direct reports. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RequestOnBehalfOfConfig = Initialize-Tm.V3RequestOnBehalfOfConfig  -AllowRequestOnBehalfOfAnyoneByAnyone true `
 -AllowRequestOnBehalfOfEmployeeByManager true
```

- Convert the resource to JSON
```powershell
$RequestOnBehalfOfConfig | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

