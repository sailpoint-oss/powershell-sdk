# PSSailpoint.PSSailpoint\Api.PasswordPoliciesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-PasswordPolicy**](PasswordPoliciesApi.md#New-PasswordPolicy) | **POST** /password-policies | Create Password Policy
[**Remove-PasswordPolicy**](PasswordPoliciesApi.md#Remove-PasswordPolicy) | **DELETE** /password-policies/{id} | Delete Password Policy by ID
[**Get-PasswordPolicyById**](PasswordPoliciesApi.md#Get-PasswordPolicyById) | **GET** /password-policies/{id} | Get Password Policy by ID
[**Get-PasswordPolicies**](PasswordPoliciesApi.md#Get-PasswordPolicies) | **GET** /password-policies | List Password Policies
[**Set-PasswordPolicy**](PasswordPoliciesApi.md#Set-PasswordPolicy) | **PUT** /password-policies/{id} | Update Password Policy by ID


<a id="New-PasswordPolicy"></a>
# **New-PasswordPolicy**
> PasswordPolicyV3Dto New-PasswordPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordPolicyV3Dto] <PSCustomObject><br>

Create Password Policy

This API creates the specified password policy. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordPolicyV3Dto = Initialize-PasswordPolicyV3Dto -Id "2c91808e7d976f3b017d9f5ceae440c8" -Description "Information about the Password Policy" -Name "PasswordPolicy Example" -DateCrated (Get-Date) -LastUpdated (Get-Date) -FirstExpirationReminder 45 -AccountIdMinWordLength 4 -AccountNameMinWordLength 6 -MinAlpha 5 -MinCharacterTypes 5 -MaxLength 25 -MinLength 8 -MaxRepeatedChars 3 -MinLower 8 -MinNumeric 8 -MinSpecial 8 -MinUpper 8 -PasswordExpiration 8 -DefaultPolicy $true -EnablePasswdExpiration $true -RequireStrongAuthn $true -RequireStrongAuthOffNetwork $true -RequireStrongAuthUntrustedGeographies $true -UseAccountAttributes $false -UseDictionary $false -UseIdentityAttributes $false -ValidateAgainstAccountId $false -ValidateAgainstAccountName $true -SourceIds "MySourceIds" # PasswordPolicyV3Dto | 

# Create Password Policy
try {
    $Result = New-PasswordPolicy -PasswordPolicyV3Dto $PasswordPolicyV3Dto
} catch {
    Write-Host ("Exception occurred when calling New-PasswordPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PasswordPolicyV3Dto** | [**PasswordPolicyV3Dto**](PasswordPolicyV3Dto.md)|  | 

### Return type

[**PasswordPolicyV3Dto**](PasswordPolicyV3Dto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-PasswordPolicy"></a>
# **Remove-PasswordPolicy**
> void Remove-PasswordPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Password Policy by ID

This API deletes the specified password policy. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ff808081838d9e9d01838da6a03e0002" # String | The ID of password policy to delete.

# Delete Password Policy by ID
try {
    $Result = Remove-PasswordPolicy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-PasswordPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of password policy to delete. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PasswordPolicyById"></a>
# **Get-PasswordPolicyById**
> PasswordPolicyV3Dto Get-PasswordPolicyById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Password Policy by ID

This API returns the password policy for the specified ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ff808081838d9e9d01838da6a03e0005" # String | The ID of password policy to retrieve.

# Get Password Policy by ID
try {
    $Result = Get-PasswordPolicyById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordPolicyById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of password policy to retrieve. | 

### Return type

[**PasswordPolicyV3Dto**](PasswordPolicyV3Dto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-PasswordPolicies"></a>
# **Get-PasswordPolicies**
> PasswordPolicyV3Dto[] Get-PasswordPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Password Policies

This gets list of all Password Policies. Requires role of ORG_ADMIN

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List Password Policies
try {
    $Result = Get-PasswordPolicies -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**PasswordPolicyV3Dto[]**](PasswordPolicyV3Dto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-PasswordPolicy"></a>
# **Set-PasswordPolicy**
> PasswordPolicyV3Dto Set-PasswordPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordPolicyV3Dto] <PSCustomObject><br>

Update Password Policy by ID

This API updates the specified password policy. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ff808081838d9e9d01838da6a03e0007" # String | The ID of password policy to update.
$PasswordPolicyV3Dto = Initialize-PasswordPolicyV3Dto -Id "2c91808e7d976f3b017d9f5ceae440c8" -Description "Information about the Password Policy" -Name "PasswordPolicy Example" -DateCrated (Get-Date) -LastUpdated (Get-Date) -FirstExpirationReminder 45 -AccountIdMinWordLength 4 -AccountNameMinWordLength 6 -MinAlpha 5 -MinCharacterTypes 5 -MaxLength 25 -MinLength 8 -MaxRepeatedChars 3 -MinLower 8 -MinNumeric 8 -MinSpecial 8 -MinUpper 8 -PasswordExpiration 8 -DefaultPolicy $true -EnablePasswdExpiration $true -RequireStrongAuthn $true -RequireStrongAuthOffNetwork $true -RequireStrongAuthUntrustedGeographies $true -UseAccountAttributes $false -UseDictionary $false -UseIdentityAttributes $false -ValidateAgainstAccountId $false -ValidateAgainstAccountName $true -SourceIds "MySourceIds" # PasswordPolicyV3Dto | 

# Update Password Policy by ID
try {
    $Result = Set-PasswordPolicy -Id $Id -PasswordPolicyV3Dto $PasswordPolicyV3Dto
} catch {
    Write-Host ("Exception occurred when calling Set-PasswordPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The ID of password policy to update. | 
 **PasswordPolicyV3Dto** | [**PasswordPolicyV3Dto**](PasswordPolicyV3Dto.md)|  | 

### Return type

[**PasswordPolicyV3Dto**](PasswordPolicyV3Dto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

