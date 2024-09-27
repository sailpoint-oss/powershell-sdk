# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaPasswordPoliciesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaPasswordPolicy**](BetaPasswordPoliciesApi.md#New-BetaPasswordPolicy) | **POST** /password-policies | Create Password Policy
[**Remove-BetaPasswordPolicy**](BetaPasswordPoliciesApi.md#Remove-BetaPasswordPolicy) | **DELETE** /password-policies/{id} | Delete Password Policy by ID
[**Get-BetaPasswordPolicyById**](BetaPasswordPoliciesApi.md#Get-BetaPasswordPolicyById) | **GET** /password-policies/{id} | Get Password Policy by ID
[**Get-BetaPasswordPolicies**](BetaPasswordPoliciesApi.md#Get-BetaPasswordPolicies) | **GET** /password-policies | List Password Policies
[**Set-BetaPasswordPolicy**](BetaPasswordPoliciesApi.md#Set-BetaPasswordPolicy) | **PUT** /password-policies/{id} | Update Password Policy by ID


<a id="New-BetaPasswordPolicy"></a>
# **New-BetaPasswordPolicy**
> PasswordPolicyV3Dto New-BetaPasswordPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordPolicyV3Dto] <PSCustomObject><br>

Create Password Policy

This API creates the specified password policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$PasswordPolicyV3Dto = Initialize-PasswordPolicyV3Dto -Id "2c91808e7d976f3b017d9f5ceae440c8" -Description "Information about the Password Policy" -Name "PasswordPolicy Example" -DateCreated (Get-Date) -LastUpdated (Get-Date) -FirstExpirationReminder 45 -AccountIdMinWordLength 4 -AccountNameMinWordLength 6 -MinAlpha 5 -MinCharacterTypes 5 -MaxLength 25 -MinLength 8 -MaxRepeatedChars 3 -MinLower 8 -MinNumeric 8 -MinSpecial 8 -MinUpper 8 -PasswordExpiration 8 -DefaultPolicy $true -EnablePasswdExpiration $true -RequireStrongAuthn $true -RequireStrongAuthOffNetwork $true -RequireStrongAuthUntrustedGeographies $true -UseAccountAttributes $false -UseDictionary $false -UseIdentityAttributes $false -ValidateAgainstAccountId $false -ValidateAgainstAccountName $true -Created "MyCreated" -Modified "MyModified" -SourceIds "MySourceIds" # PasswordPolicyV3Dto | 

# Create Password Policy
try {
    $Result = New-BetaPasswordPolicy -PasswordPolicyV3Dto $PasswordPolicyV3Dto
} catch {
    Write-Host ("Exception occurred when calling New-BetaPasswordPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaPasswordPolicy"></a>
# **Remove-BetaPasswordPolicy**
> void Remove-BetaPasswordPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Password Policy by ID

This API deletes the specified password policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ff808081838d9e9d01838da6a03e0002" # String | The ID of password policy to delete.

# Delete Password Policy by ID
try {
    $Result = Remove-BetaPasswordPolicy -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaPasswordPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaPasswordPolicyById"></a>
# **Get-BetaPasswordPolicyById**
> PasswordPolicyV3Dto Get-BetaPasswordPolicyById<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Password Policy by ID

This API returns the password policy for the specified ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ff808081838d9e9d01838da6a03e0005" # String | The ID of password policy to retrieve.

# Get Password Policy by ID
try {
    $Result = Get-BetaPasswordPolicyById -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaPasswordPolicyById: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaPasswordPolicies"></a>
# **Get-BetaPasswordPolicies**
> PasswordPolicyV3Dto[] Get-BetaPasswordPolicies<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Password Policies

This gets list of all Password Policies. Requires role of ORG_ADMIN

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List Password Policies
try {
    $Result = Get-BetaPasswordPolicies -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-BetaPasswordPolicies: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-BetaPasswordPolicy"></a>
# **Set-BetaPasswordPolicy**
> PasswordPolicyV3Dto Set-BetaPasswordPolicy<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PasswordPolicyV3Dto] <PSCustomObject><br>

Update Password Policy by ID

This API updates the specified password policy.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "ff808081838d9e9d01838da6a03e0007" # String | The ID of password policy to update.
$PasswordPolicyV3Dto = Initialize-PasswordPolicyV3Dto -Id "2c91808e7d976f3b017d9f5ceae440c8" -Description "Information about the Password Policy" -Name "PasswordPolicy Example" -DateCreated (Get-Date) -LastUpdated (Get-Date) -FirstExpirationReminder 45 -AccountIdMinWordLength 4 -AccountNameMinWordLength 6 -MinAlpha 5 -MinCharacterTypes 5 -MaxLength 25 -MinLength 8 -MaxRepeatedChars 3 -MinLower 8 -MinNumeric 8 -MinSpecial 8 -MinUpper 8 -PasswordExpiration 8 -DefaultPolicy $true -EnablePasswdExpiration $true -RequireStrongAuthn $true -RequireStrongAuthOffNetwork $true -RequireStrongAuthUntrustedGeographies $true -UseAccountAttributes $false -UseDictionary $false -UseIdentityAttributes $false -ValidateAgainstAccountId $false -ValidateAgainstAccountName $true -Created "MyCreated" -Modified "MyModified" -SourceIds "MySourceIds" # PasswordPolicyV3Dto | 

# Update Password Policy by ID
try {
    $Result = Set-BetaPasswordPolicy -Id $Id -PasswordPolicyV3Dto $PasswordPolicyV3Dto
} catch {
    Write-Host ("Exception occurred when calling Set-BetaPasswordPolicy: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

