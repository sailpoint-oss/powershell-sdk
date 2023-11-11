# CreatePersonalAccessTokenRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the personal access token (PAT) to be created. Cannot be the same as another PAT owned by the user for whom this PAT is being created. | 
**Scope** | **String[]** | Scopes of the personal access token. If no scope is specified, the token will be created with the default scope &quot;&quot;sp:scopes:all&quot;&quot;. This means the personal access token will have all the rights of the owner who created it. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePersonalAccessTokenRequest = Initialize-BetaCreatePersonalAccessTokenRequest  -Name NodeJS Integration `
 -Scope [demo:personal-access-token-scope:first, demo:personal-access-token-scope:second]
```

- Convert the resource to JSON
```powershell
$CreatePersonalAccessTokenRequest | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

