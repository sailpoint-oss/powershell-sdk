# CertificationIdentitySummary
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the identity summary | [optional] 
**Name** | **String** | Name of the linked identity | [optional] 
**IdentityId** | **String** | The ID of the identity being certified | [optional] 
**Completed** | **Boolean** | Indicates whether the review items for the linked identity&#39;s certification have been completed | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationIdentitySummary = Initialize-CertificationIdentitySummary  -Id 2c91808772a504f50172a9540e501ba7 `
 -Name Alison Ferguso `
 -IdentityId 2c9180857182306001719937377a33de `
 -Completed true
```

- Convert the resource to JSON
```powershell
$CertificationIdentitySummary | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

