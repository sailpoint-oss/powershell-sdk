# V3ConnectorDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The connector name | [optional] 
**Type** | **String** | The connector type | [optional] 
**ScriptName** | **String** | The connector script name | [optional] 
**Features** | **String[]** | The list of features supported by the connector | [optional] 
**DirectConnect** | **Boolean** | true if the source is a direct connect source | [optional] [default to $false]
**ConnectorMetadata** | [**SystemCollectionsHashtable**](.md) | Object containing metadata pertinent to the UI to be used | [optional] 
**Status** | **String** | The connector status | [optional] 

## Examples

- Prepare the resource
```powershell
$V3ConnectorDto = Initialize-BetaV3ConnectorDto  -Name name `
 -Type ServiceNow `
 -ScriptName servicenow `
 -Features [PROVISIONING, SYNC_PROVISIONING, SEARCH, UNSTRUCTURED_TARGETS] `
 -DirectConnect true `
 -ConnectorMetadata {supportedUI&#x3D;EXTJS, platform&#x3D;ccg, shortDesc&#x3D;connector description} `
 -Status RELEASED
```

- Convert the resource to JSON
```powershell
$V3ConnectorDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

