# SourceAppAccountSource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The source ID | [optional] 
**Type** | **String** | The source type, will always be &quot;&quot;SOURCE&quot;&quot; | [optional] 
**Name** | **String** | The source name | [optional] 
**UseForPasswordManagement** | **Boolean** | If the source is used for password management | [optional] [default to $false]
**PasswordPolicies** | [**BaseReferenceDto[]**](BaseReferenceDto.md) | The password policies for the source | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceAppAccountSource = Initialize-PSSailpoint.V2024SourceAppAccountSource  -Id 2c9180827ca885d7017ca8ce28a000eb `
 -Type SOURCE `
 -Name ODS-AD-Source `
 -UseForPasswordManagement false `
 -PasswordPolicies [{type&#x3D;PASSWORD_POLICY, id&#x3D;006a072ecc6647f68bba9f4a4ad34649, name&#x3D;Password Policy 1}]
```

- Convert the resource to JSON
```powershell
$SourceAppAccountSource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

