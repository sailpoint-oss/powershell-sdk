# V3ConnectorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The connector name | [optional] 
**Type** | **String** | The connector type | [optional] 
**ScriptName** | **String** | The connector script name | [optional] 
**ClassName** | **String** | The connector class name. | [optional] 
**Features** | **String[]** | The list of features supported by the connector | [optional] 
**DirectConnect** | **Boolean** | true if the source is a direct connect source | [optional] [default to $false]
**ConnectorMetadata** | [**System.Collections.Hashtable**](AnyType.md) | A map containing metadata pertinent to the connector | [optional] 
**Status** | **String** | The connector status | [optional] 

## Examples

- Prepare the resource
```powershell
$V3ConnectorDto = Initialize-Tm.V2024V3ConnectorDto  -Name name `
 -Type ServiceNow `
 -ScriptName servicenow `
 -ClassName sailpoint.connector.OpenConnectorAdapter `
 -Features [PROVISIONING, SYNC_PROVISIONING, SEARCH, UNSTRUCTURED_TARGETS] `
 -DirectConnect true `
 -ConnectorMetadata {supportedUI&#x3D;ANGULAR, platform&#x3D;ccg, shortDesc&#x3D;connector description} `
 -Status RELEASED
```

- Convert the resource to JSON
```powershell
$V3ConnectorDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

