# CertificationReferenceDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of certification for review. | [optional] 
**Id** | **String** | ID of certification for review. | [optional] 
**Name** | **String** | Display name of certification for review. | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationReferenceDto = Initialize-BetaCertificationReferenceDto  -Type IDENTITY `
 -Id 7589a83cec4b4f138ce56c1a5ef0756d `
 -Name Manager Access for Michael Michaels
```

- Convert the resource to JSON
```powershell
$CertificationReferenceDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

