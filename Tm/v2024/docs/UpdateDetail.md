# UpdateDetail
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | The detailed message for an update. Typically the relevent error message when status is error. | [optional] 
**ScriptName** | **String** | The connector script name | [optional] 
**UpdatedFiles** | **String[]** | The list of updated files supported by the connector | [optional] 
**Status** | **String** | The connector update status | [optional] 

## Examples

- Prepare the resource
```powershell
$UpdateDetail = Initialize-Tm.V2024UpdateDetail  -Message unsupported xsd version, please ensure latest xsd version http://www.sailpoint.com/xsd/sailpoint_form_2_0.xsd is used for source config `
 -ScriptName servicenow `
 -UpdatedFiles [pod/org/connectorFiles/testconnector/test1.jar] `
 -Status ERROR
```

- Convert the resource to JSON
```powershell
$UpdateDetail | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

