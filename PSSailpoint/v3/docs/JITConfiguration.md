# JITConfiguration
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | The indicator for just-in-time provisioning enabled | [optional] [default to $false]
**SourceId** | **String** | the sourceId that mapped to just-in-time provisioning configuration | [optional] 
**SourceAttributeMappings** | **System.Collections.Hashtable** | A mapping of identity profile attribute names to SAML assertion attribute names | [optional] 

## Examples

- Prepare the resource
```powershell
$JITConfiguration = Initialize-PSSailpointJITConfiguration  -Enabled false `
 -SourceId 2c9180857377ed2901739c12a2da5ac8 `
 -SourceAttributeMappings {firstName&#x3D;okta.firstName, lastName&#x3D;okta.lastName, email&#x3D;okta.email}
```

- Convert the resource to JSON
```powershell
$JITConfiguration | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

