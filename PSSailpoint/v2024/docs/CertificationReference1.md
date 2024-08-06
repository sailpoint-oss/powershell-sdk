# CertificationReference1
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | DTO type of certification for review. | [optional] 
**Id** | **String** | ID of certification for review. | [optional] 
**Name** | **String** | Display name of certification for review. | [optional] 
**Reviewer** | [**Reviewer1**](Reviewer1.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationReference1 = Initialize-PSSailpointV2024CertificationReference1  -Type IDENTITY `
 -Id 7589a83cec4b4f138ce56c1a5ef0756d `
 -Name Manager Access for Michael Michaels `
 -Reviewer null
```

- Convert the resource to JSON
```powershell
$CertificationReference1 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

