# CertificationReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the certification. | [optional] 
**Name** | **String** | The name of the certification. | [optional] 
**Type** | **String** |  | [optional] 
**Reviewer** | [**Reviewer**](Reviewer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationReference = Initialize-CertificationReference  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Name Certification Name `
 -Type CERTIFICATION `
 -Reviewer null
```

- Convert the resource to JSON
```powershell
$CertificationReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

