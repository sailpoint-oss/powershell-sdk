# CreateConnectorRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**ClassName** | **String** |  | [optional] 
**DirectConnect** | **Boolean** |  | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateConnectorRequest = Initialize-CCCreateConnectorRequest  -Name My Connector `
 -Description My Connector `
 -ClassName sailpoint.connector.OpenConnectorAdapter `
 -DirectConnect true `
 -Status released
```

- Convert the resource to JSON
```powershell
$CreateConnectorRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

