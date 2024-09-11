# V3CreateConnectorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The connector name. Need to be unique per tenant. The name will able be used to derive a url friendly unique scriptname that will be in response. Script name can then be used for all update endpoints | 
**Type** | **String** | The connector type. If not specified will be defaulted to &#39;custom &#39;+name | [optional] 
**ClassName** | **String** | The connector class name. If you are implementing openconnector standard (what is recommended), then this need to be set to sailpoint.connector.OpenConnectorAdapter | 
**DirectConnect** | **Boolean** | true if the source is a direct connect source | [optional] [default to $true]
**Status** | **String** | The connector status | [optional] 

## Examples

- Prepare the resource
```powershell
$V3CreateConnectorDto = Initialize-Tm.V2024V3CreateConnectorDto  -Name custom connector `
 -Type custom connector type `
 -ClassName sailpoint.connector.OpenConnectorAdapter `
 -DirectConnect true `
 -Status RELEASED
```

- Convert the resource to JSON
```powershell
$V3CreateConnectorDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

