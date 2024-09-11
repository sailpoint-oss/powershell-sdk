# Tm.Beta.Tm.Beta\Api.BetaIdentityAttributesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaIdentityAttribute**](BetaIdentityAttributesApi.md#New-BetaIdentityAttribute) | **POST** /identity-attributes | Create Identity Attribute
[**Remove-BetaIdentityAttribute**](BetaIdentityAttributesApi.md#Remove-BetaIdentityAttribute) | **DELETE** /identity-attributes/{name} | Delete Identity Attribute
[**Remove-BetaIdentityAttributesInBulk**](BetaIdentityAttributesApi.md#Remove-BetaIdentityAttributesInBulk) | **DELETE** /identity-attributes/bulk-delete | Bulk delete Identity Attributes
[**Get-BetaIdentityAttribute**](BetaIdentityAttributesApi.md#Get-BetaIdentityAttribute) | **GET** /identity-attributes/{name} | Get Identity Attribute
[**Get-BetaIdentityAttributes**](BetaIdentityAttributesApi.md#Get-BetaIdentityAttributes) | **GET** /identity-attributes | List Identity Attributes
[**Send-BetaIdentityAttribute**](BetaIdentityAttributesApi.md#Send-BetaIdentityAttribute) | **PUT** /identity-attributes/{name} | Update Identity Attribute


<a id="New-BetaIdentityAttribute"></a>
# **New-BetaIdentityAttribute**
> IdentityAttribute New-BetaIdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAttribute] <PSCustomObject><br>

Create Identity Attribute

Use this API to create a new identity attribute.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Source1 = Initialize-Source1 -Type "rule" -Properties 
$IdentityAttribute = Initialize-IdentityAttribute -Name "costCenter" -DisplayName "Cost Center" -Standard $false -Type "string" -Multi $false -Searchable $false -System $false -Sources $Source1 # IdentityAttribute | 

# Create Identity Attribute
try {
    $Result = New-BetaIdentityAttribute -IdentityAttribute $IdentityAttribute
} catch {
    Write-Host ("Exception occurred when calling New-BetaIdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityAttribute** | [**IdentityAttribute**](IdentityAttribute.md)|  | 

### Return type

[**IdentityAttribute**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaIdentityAttribute"></a>
# **Remove-BetaIdentityAttribute**
> void Remove-BetaIdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Delete Identity Attribute

This deletes an identity attribute with the given name.  The `system` and `standard` properties must be set to false before you can delete an identity attribute.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "displayName" # String | The attribute's technical name.

# Delete Identity Attribute
try {
    $Result = Remove-BetaIdentityAttribute -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaIdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The attribute&#39;s technical name. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-BetaIdentityAttributesInBulk"></a>
# **Remove-BetaIdentityAttributesInBulk**
> void Remove-BetaIdentityAttributesInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAttributeNames] <PSCustomObject><br>

Bulk delete Identity Attributes

Use this API to bulk delete identity attributes for a given set of names. Attributes that are currently mapped in an identity profile cannot be deleted.  The `system` and `standard` properties must be set to 'false' before you can delete an identity attribute.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IdentityAttributeNames = Initialize-IdentityAttributeNames -Ids "name" # IdentityAttributeNames | 

# Bulk delete Identity Attributes
try {
    $Result = Remove-BetaIdentityAttributesInBulk -IdentityAttributeNames $IdentityAttributeNames
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaIdentityAttributesInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IdentityAttributeNames** | [**IdentityAttributeNames**](IdentityAttributeNames.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaIdentityAttribute"></a>
# **Get-BetaIdentityAttribute**
> IdentityAttribute Get-BetaIdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get Identity Attribute

This gets an identity attribute for a given technical name.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "displayName" # String | The attribute's technical name.

# Get Identity Attribute
try {
    $Result = Get-BetaIdentityAttribute -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-BetaIdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The attribute&#39;s technical name. | 

### Return type

[**IdentityAttribute**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaIdentityAttributes"></a>
# **Get-BetaIdentityAttributes**
> IdentityAttribute[] Get-BetaIdentityAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSystem] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSilent] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchableOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Identity Attributes

Use this API to get a collection of identity attributes.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IncludeSystem = $false # Boolean | Include 'system' attributes in the response. (optional) (default to $false)
$IncludeSilent = $false # Boolean | Include 'silent' attributes in the response. (optional) (default to $false)
$SearchableOnly = $false # Boolean | Include only 'searchable' attributes in the response. (optional) (default to $false)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List Identity Attributes
try {
    $Result = Get-BetaIdentityAttributes -IncludeSystem $IncludeSystem -IncludeSilent $IncludeSilent -SearchableOnly $SearchableOnly -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-BetaIdentityAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **IncludeSystem** | **Boolean**| Include &#39;system&#39; attributes in the response. | [optional] [default to $false]
 **IncludeSilent** | **Boolean**| Include &#39;silent&#39; attributes in the response. | [optional] [default to $false]
 **SearchableOnly** | **Boolean**| Include only &#39;searchable&#39; attributes in the response. | [optional] [default to $false]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**IdentityAttribute[]**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaIdentityAttribute"></a>
# **Send-BetaIdentityAttribute**
> IdentityAttribute Send-BetaIdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAttribute] <PSCustomObject><br>

Update Identity Attribute

This updates an existing identity attribute.  Making an attribute searchable requires that the `system`, `standard`, and `multi` properties be set to false.   A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "displayName" # String | The attribute's technical name.
$Source1 = Initialize-Source1 -Type "rule" -Properties 
$IdentityAttribute = Initialize-IdentityAttribute -Name "costCenter" -DisplayName "Cost Center" -Standard $false -Type "string" -Multi $false -Searchable $false -System $false -Sources $Source1 # IdentityAttribute | 

# Update Identity Attribute
try {
    $Result = Send-BetaIdentityAttribute -Name $Name -IdentityAttribute $IdentityAttribute
} catch {
    Write-Host ("Exception occurred when calling Send-BetaIdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The attribute&#39;s technical name. | 
 **IdentityAttribute** | [**IdentityAttribute**](IdentityAttribute.md)|  | 

### Return type

[**IdentityAttribute**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

