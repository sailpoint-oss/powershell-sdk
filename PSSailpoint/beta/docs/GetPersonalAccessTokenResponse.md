# GetPersonalAccessTokenResponse
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the personal access token (to be used as the username for Basic Auth). | 
**Name** | **String** | The name of the personal access token. Cannot be the same as other personal access tokens owned by a user. | 
**Scope** | **String[]** | Scopes of the personal  access token. | 
**Owner** | [**PatOwner**](PatOwner.md) |  | 
**Created** | **System.DateTime** | The date and time, down to the millisecond, when this personal access token was created. | 
**LastUsed** | **System.DateTime** | The date and time, down to the millisecond, when this personal access token was last used to generate an access token. This timestamp does not get updated on every PAT usage, but only once a day. This property can be useful for identifying which PATs are no longer actively used and can be removed. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPersonalAccessTokenResponse = Initialize-BetaGetPersonalAccessTokenResponse  -Id 86f1dc6fe8f54414950454cbb11278fa `
 -Name NodeJS Integration `
 -Scope [demo:personal-access-token-scope:first, demo:personal-access-token-scope:second] `
 -Owner null `
 -Created 2017-07-11T18:45:37.098Z `
 -LastUsed 2017-07-11T18:45:37.098Z
```

- Convert the resource to JSON
```powershell
$GetPersonalAccessTokenResponse | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

