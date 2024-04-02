# ManualDiscoverApplicationsTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationName** | **String** | Name of the example application. | [optional] 
**Domain** | **String** | Description of the example application&#39;s domain. | [optional] 

## Examples

- Prepare the resource
```powershell
$ManualDiscoverApplicationsTemplate = Initialize-PSSailpointBetaManualDiscoverApplicationsTemplate  -ApplicationName Example Application `
 -Domain Example Description
```

- Convert the resource to JSON
```powershell
$ManualDiscoverApplicationsTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

