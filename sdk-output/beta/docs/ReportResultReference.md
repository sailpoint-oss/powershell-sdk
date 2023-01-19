# ReportResultReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](DtoType.md) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 
**Status** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportResultReference = Initialize-PSSailpointBetaReportResultReference  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson `
 -Status null
```

- Convert the resource to JSON
```powershell
$ReportResultReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

