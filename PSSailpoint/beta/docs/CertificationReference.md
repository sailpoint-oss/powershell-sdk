# CertificationReference
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**SystemCollectionsHashtable**](.md) | The type of object that the reviewer is. | [optional] 
**CorrelatedStatus** | [**SystemCollectionsHashtable**](.md) | The correlatedStatus of the campaign. Only SOURCE_OWNER campaigns can be Uncorrelated. An Uncorrelated certification campaign only includes Uncorrelated identities (An identity is uncorrelated if it has no accounts on an authoritative source). | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 
**Reviewer** | [**Reviewer**](Reviewer.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationReference = Initialize-PSSailpointBetaCertificationReference  -Type CERTIFICATION `
 -CorrelatedStatus CORRELATED `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson `
 -Reviewer null
```

- Convert the resource to JSON
```powershell
$CertificationReference | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

