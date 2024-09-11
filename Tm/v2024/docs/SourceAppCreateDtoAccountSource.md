# SourceAppCreateDtoAccountSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The source ID | 
**Type** | **String** | The source type, will always be &quot;&quot;SOURCE&quot;&quot; | [optional] 
**Name** | **String** | The source name | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceAppCreateDtoAccountSource = Initialize-Tm.V2024SourceAppCreateDtoAccountSource  -Id 2c9180827ca885d7017ca8ce28a000eb `
 -Type SOURCE `
 -Name ODS-AD-Source
```

- Convert the resource to JSON
```powershell
$SourceAppCreateDtoAccountSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

