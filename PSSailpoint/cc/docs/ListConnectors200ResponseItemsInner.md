# ListConnectors200ResponseItemsInner
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationXml** | **String** |  | [optional] 
**ClassName** | **String** |  | [optional] 
**ConnectorMetadata** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**CorrelationConfigXml** | **String** |  | [optional] 
**DirectConnect** | **Boolean** |  | [optional] 
**FileUpload** | **Boolean** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**S3Location** | **String** |  | [optional] 
**Scope** | **String** |  | [optional] 
**ScriptName** | **String** |  | [optional] 
**SourceConfig** | **String** |  | [optional] 
**SourceConfigFrom** | **String** |  | [optional] 
**SourceConfigXml** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**TranslationProperties** | [**SystemCollectionsHashtable**](.md) |  | [optional] 
**Type** | **String** |  | [optional] 
**UploadedFiles** | [**SystemCollectionsHashtable[]**](SystemCollectionsHashtable.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListConnectors200ResponseItemsInner = Initialize-CCListConnectors200ResponseItemsInner  -ApplicationXml null `
 -ClassName null `
 -ConnectorMetadata null `
 -CorrelationConfigXml null `
 -DirectConnect null `
 -FileUpload null `
 -Id 8017 `
 -Name ACF2 `
 -S3Location null `
 -Scope global `
 -ScriptName acf2-angularsc `
 -SourceConfig null `
 -SourceConfigFrom null `
 -SourceConfigXml null `
 -Status RELEASED `
 -TranslationProperties null `
 -Type ACF2 - Full `
 -UploadedFiles []
```

- Convert the resource to JSON
```powershell
$ListConnectors200ResponseItemsInner | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

