# IdentityCertificationTask
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The task id | [optional] 
**CertificationId** | **String** | The certification id | [optional] 
**Type** | **String** |  | [optional] 
**Status** | **String** |  | [optional] 
**Errors** | **String[]** | Any errors executing the task (Optional). | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityCertificationTask = Initialize-BetaIdentityCertificationTask  -Id abcd-ef12-3456 `
 -CertificationId ef38f94347e94562b5bb8424a56397d8 `
 -Type null `
 -Status null `
 -Errors []
```

- Convert the resource to JSON
```powershell
$IdentityCertificationTask | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

