# SourceCreationErrors
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MultihostId** | **String** | Multi-Host Integration ID. | [optional] [readonly] 
**SourceName** | **String** | Source&#39;s human-readable name. | [optional] 
**SourceError** | **String** | Source&#39;s human-readable description. | [optional] 
**Created** | **System.DateTime** | Date-time when the source was created | [optional] 
**Modified** | **System.DateTime** | Date-time when the source was last modified. | [optional] 
**Operation** | **String** | operation category (e.g. DELETE). | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceCreationErrors = Initialize-PSSailpoint.BetaSourceCreationErrors  -MultihostId 2c91808568c529c60168cca6f90c1324 `
 -SourceName My Source `
 -SourceError Source with internal name &quot;My Source [source]&quot; already exists. `
 -Created 2022-02-08T14:50:03.827Z `
 -Modified 2024-01-23T18:08:50.897Z `
 -Operation DELETE
```

- Convert the resource to JSON
```powershell
$SourceCreationErrors | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
