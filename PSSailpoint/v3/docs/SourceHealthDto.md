# SourceHealthDto
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id of the Source | [optional] [readonly] 
**Type** | **String** | Specifies the type of system being managed e.g. Active Directory, Workday, etc.. If you are creating a Delimited File source, you must set the &#x60;provisionasCsv&#x60; query parameter to &#x60;true&#x60;.  | [optional] 
**Name** | **String** | the name of the source | [optional] 
**Org** | **String** | source&#39;s org | [optional] 
**IsAuthoritative** | **Boolean** | Is the source authoritative | [optional] 
**IsCluster** | **Boolean** | Is the source in a cluster | [optional] 
**Hostname** | **String** | source&#39;s hostname | [optional] 
**Pod** | **String** | source&#39;s pod | [optional] 
**IqServiceVersion** | **String** | The version of the iqService | [optional] 
**Status** | **String** | connection test result | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceHealthDto = Initialize-SourceHealthDto  -Id 2c91808568c529c60168cca6f90c1324 `
 -Type OpenLDAP - Direct `
 -Name Source1234 `
 -Org denali-cjh `
 -IsAuthoritative false `
 -IsCluster false `
 -Hostname megapod-useast1-secret-hostname.sailpoint.com `
 -Pod megapod-useast1 `
 -IqServiceVersion iqVersion123 `
 -Status SOURCE_STATE_UNCHECKED_SOURCE
```

- Convert the resource to JSON
```powershell
$SourceHealthDto | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

