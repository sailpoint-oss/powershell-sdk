# ExternalAttributes
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | A unique name for the external trigger | [optional] 
**Description** | **String** | Additonal context about the external trigger | [optional] 
**ClientId** | **String** | OAuth Client ID to authenticate with this trigger | [optional] 
**Url** | **String** | URL to invoke this workflow | [optional] 

## Examples

- Prepare the resource
```powershell
$ExternalAttributes = Initialize-PSSailpointExternalAttributes  -Name search-and-notify `
 -Description Run a search and notify the results `
 -ClientId 87e239b2-b85b-4bde-b9a7-55bf304ddcdc `
 -Url https://tenant.api.identitynow.com/beta/workflows/execute/external/c79e0079-562c-4df5-aa73-60a9e25c916d
```

- Convert the resource to JSON
```powershell
$ExternalAttributes | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

