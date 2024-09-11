# ManualDiscoverApplicationsTemplate
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationName** | **String** | Name of the example application. | [optional] 
**Description** | **String** | Description of the example application. | [optional] 

## Examples

- Prepare the resource
```powershell
$ManualDiscoverApplicationsTemplate = Initialize-Tm.BetaManualDiscoverApplicationsTemplate  -ApplicationName Example Application `
 -Description Example Description
```

- Convert the resource to JSON
```powershell
$ManualDiscoverApplicationsTemplate | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

