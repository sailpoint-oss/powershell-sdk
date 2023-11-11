# PSSailpoint.PSSailpoint/Api.OAuthClientsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-OauthClient**](OAuthClientsApi.md#New-OauthClient) | **POST** /oauth-clients | Create OAuth Client
[**Remove-OauthClient**](OAuthClientsApi.md#Remove-OauthClient) | **DELETE** /oauth-clients/{id} | Delete OAuth Client
[**Get-OauthClient**](OAuthClientsApi.md#Get-OauthClient) | **GET** /oauth-clients/{id} | Get OAuth Client
[**Get-OauthClients**](OAuthClientsApi.md#Get-OauthClients) | **GET** /oauth-clients | List OAuth Clients
[**Update-OauthClient**](OAuthClientsApi.md#Update-OauthClient) | **PATCH** /oauth-clients/{id} | Patch OAuth Client


<a name="New-OauthClient"></a>
# **New-OauthClient**
> CreateOAuthClientResponse New-OauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateOAuthClientRequest] <PSCustomObject><br>

Create OAuth Client

This creates an OAuth client.

### Example
```powershell
$CreateOAuthClientRequest = Initialize-CreateOAuthClientRequest -BusinessName "Acme-Solar" -HomepageUrl "http://localhost:12345" -Name "Demo API Client" -Description "An API client used for the authorization_code, refresh_token, and client_credentials flows" -AccessTokenValiditySeconds 750 -RefreshTokenValiditySeconds 86400 -RedirectUris "MyRedirectUris" -GrantTypes "CLIENT_CREDENTIALS" -AccessType "ONLINE" -Type "CONFIDENTIAL" -Internal $false -Enabled $true -StrongAuthSupported $false -ClaimsSupported $false -Scope "MyScope" # CreateOAuthClientRequest | 

# Create OAuth Client
try {
    $Result = New-OauthClient -CreateOAuthClientRequest $CreateOAuthClientRequest
} catch {
    Write-Host ("Exception occurred when calling New-OauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-OauthClient"></a>
# **Remove-OauthClient**
> void Remove-OauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete OAuth Client

This deletes an OAuth client.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The OAuth client id

# Delete OAuth Client
try {
    $Result = Remove-OauthClient -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-OauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OauthClient"></a>
# **Get-OauthClient**
> GetOAuthClientResponse Get-OauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get OAuth Client

This gets details of an OAuth client.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The OAuth client id

# Get OAuth Client
try {
    $Result = Get-OauthClient -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-OauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-OauthClients"></a>
# **Get-OauthClients**
> GetOAuthClientResponse[] Get-OauthClients<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List OAuth Clients

This gets a list of OAuth clients.

### Example
```powershell
$Filters = "lastUsed le 2023-02-05T10:59:27.214Z" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **lastUsed**: *le, isnull* (optional)

# List OAuth Clients
try {
    $Result = Get-OauthClients -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-OauthClients: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **lastUsed**: *le, isnull* | [optional] 

### Return type

[**GetOAuthClientResponse[]**](GetOAuthClientResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-OauthClient"></a>
# **Update-OauthClient**
> GetOAuthClientResponse Update-OauthClient<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch OAuth Client

This performs a targeted update to the field(s) of an OAuth client.

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The OAuth client id
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of OAuth client update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.  The following fields are patchable: * tenant * businessName * homepageUrl * name * description * accessTokenValiditySeconds * refreshTokenValiditySeconds * redirectUris * grantTypes * accessType * enabled * strongAuthSupported * claimsSupported 

# Patch OAuth Client
try {
    $Result = Update-OauthClient -Id $Id -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-OauthClient: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

