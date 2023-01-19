# PSSailpointBeta.PSSailpointBeta/Api.BetaOAuthClientsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaOauthClient**](BetaOAuthClientsApi.md#New-BetaOauthClient) | **POST** /oauth-clients | Create OAuth Client
[**Invoke-BetaDeleteOauthClient**](BetaOAuthClientsApi.md#Invoke-BetaDeleteOauthClient) | **DELETE** /oauth-clients/{id} | Delete OAuth Client
[**Get-BetaOauthClient**](BetaOAuthClientsApi.md#Get-BetaOauthClient) | **GET** /oauth-clients/{id} | Get OAuth Client
[**Invoke-BetaListOauthClients**](BetaOAuthClientsApi.md#Invoke-BetaListOauthClients) | **GET** /oauth-clients | List OAuth Clients
[**Invoke-BetaPatchOauthClient**](BetaOAuthClientsApi.md#Invoke-BetaPatchOauthClient) | **PATCH** /oauth-clients/{id} | Patch OAuth Client


<a name="New-BetaOauthClient"></a>
# **New-BetaOauthClient**
> CreateOAuthClientResponse New-BetaOauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateOAuthClientRequest] <PSCustomObject><br>

Create OAuth Client

This creates an OAuth client.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CreateOAuthClientRequest = Initialize-CreateOAuthClientRequest -BusinessName "Acme-Solar" -HomepageUrl "http://localhost:12345" -Name "Demo API Client" -Description "An API client used for the authorization_code, refresh_token, and client_credentials flows" -AccessTokenValiditySeconds 750 -RefreshTokenValiditySeconds 86400 -RedirectUris "MyRedirectUris" -GrantTypes "CLIENT_CREDENTIALS" -AccessType "ONLINE" -Type "CONFIDENTIAL" -Internal $false -Enabled $true -StrongAuthSupported $false -ClaimsSupported $false -Scope "MyScope" # CreateOAuthClientRequest | 

# Create OAuth Client
try {
    $Result = New-BetaOauthClient -CreateOAuthClientRequest $CreateOAuthClientRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaOauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateOAuthClientRequest** | [**CreateOAuthClientRequest**](CreateOAuthClientRequest.md)|  | 

### Return type

[**CreateOAuthClientResponse**](CreateOAuthClientResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaDeleteOauthClient"></a>
# **Invoke-BetaDeleteOauthClient**
> void Invoke-BetaDeleteOauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete OAuth Client

This deletes an OAuth client.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The OAuth client id

# Delete OAuth Client
try {
    $Result = Invoke-BetaDeleteOauthClient -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaDeleteOauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The OAuth client id | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaOauthClient"></a>
# **Get-BetaOauthClient**
> GetOAuthClientResponse Get-BetaOauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get OAuth Client

This gets details of an OAuth client.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The OAuth client id

# Get OAuth Client
try {
    $Result = Get-BetaOauthClient -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaOauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The OAuth client id | 

### Return type

[**GetOAuthClientResponse**](GetOAuthClientResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaListOauthClients"></a>
# **Invoke-BetaListOauthClients**
> GetOAuthClientResponse[] Invoke-BetaListOauthClients<br>

List OAuth Clients

This gets a list of OAuth clients.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List OAuth Clients
try {
    $Result = Invoke-BetaListOauthClients
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaListOauthClients: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOAuthClientResponse[]**](GetOAuthClientResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-BetaPatchOauthClient"></a>
# **Invoke-BetaPatchOauthClient**
> GetOAuthClientResponse Invoke-BetaPatchOauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch OAuth Client

This performs a targeted update to the field(s) of an OAuth client. Request will require a security scope of  - sp:oauth-client:manage

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The OAuth client id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of OAuth client update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * tenant * businessName * homepageUrl * name * description * accessTokenValiditySeconds * refreshTokenValiditySeconds * redirectUris * grantTypes * accessType * enabled * strongAuthSupported * claimsSupported 

# Patch OAuth Client
try {
    $Result = Invoke-BetaPatchOauthClient -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Invoke-BetaPatchOauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The OAuth client id | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of OAuth client update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * tenant * businessName * homepageUrl * name * description * accessTokenValiditySeconds * refreshTokenValiditySeconds * redirectUris * grantTypes * accessType * enabled * strongAuthSupported * claimsSupported  | 

### Return type

[**GetOAuthClientResponse**](GetOAuthClientResponse.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

