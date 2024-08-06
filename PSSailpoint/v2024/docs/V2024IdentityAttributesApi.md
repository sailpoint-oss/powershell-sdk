# PSSailpointV2024.PSSailpointV2024\Api.V2024IdentityAttributesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024IdentityAttribute**](V2024IdentityAttributesApi.md#New-V2024IdentityAttribute) | **POST** /identity-attributes | Create Identity Attribute
[**Remove-V2024IdentityAttribute**](V2024IdentityAttributesApi.md#Remove-V2024IdentityAttribute) | **DELETE** /identity-attributes/{name} | Delete Identity Attribute
[**Remove-V2024IdentityAttributesInBulk**](V2024IdentityAttributesApi.md#Remove-V2024IdentityAttributesInBulk) | **DELETE** /identity-attributes/bulk-delete | Bulk delete Identity Attributes
[**Get-V2024IdentityAttribute**](V2024IdentityAttributesApi.md#Get-V2024IdentityAttribute) | **GET** /identity-attributes/{name} | Get Identity Attribute
[**Get-V2024IdentityAttributes**](V2024IdentityAttributesApi.md#Get-V2024IdentityAttributes) | **GET** /identity-attributes | List Identity Attributes
[**Send-V2024IdentityAttribute**](V2024IdentityAttributesApi.md#Send-V2024IdentityAttribute) | **PUT** /identity-attributes/{name} | Update Identity Attribute


<a id="New-V2024IdentityAttribute"></a>
# **New-V2024IdentityAttribute**
> IdentityAttribute New-V2024IdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAttribute] <PSCustomObject><br>

Create Identity Attribute

Use this API to create a new identity attribute.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Source1 = Initialize-Source1 -Type "rule" -Properties 
$IdentityAttribute = Initialize-IdentityAttribute -Name "costCenter" -DisplayName "Cost Center" -Standard $false -Type "string" -Multi $false -Searchable $false -System $false -Sources $Source1 # IdentityAttribute | 

# Create Identity Attribute
try {
    $Result = New-V2024IdentityAttribute -XSailPointExperimental $XSailPointExperimental -IdentityAttribute $IdentityAttribute
} catch {
    Write-Host ("Exception occurred when calling New-V2024IdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **IdentityAttribute** | [**IdentityAttribute**](IdentityAttribute.md)|  | 

### Return type

[**IdentityAttribute**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024IdentityAttribute"></a>
# **Remove-V2024IdentityAttribute**
> void Remove-V2024IdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Delete Identity Attribute

This deletes an identity attribute with the given name.  The `system` and `standard` properties must be set to false before you can delete an identity attribute.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "displayName" # String | The attribute's technical name.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete Identity Attribute
try {
    $Result = Remove-V2024IdentityAttribute -Name $Name -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024IdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The attribute&#39;s technical name. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024IdentityAttributesInBulk"></a>
# **Remove-V2024IdentityAttributesInBulk**
> void Remove-V2024IdentityAttributesInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAttributeNames] <PSCustomObject><br>

Bulk delete Identity Attributes

Use this API to bulk delete identity attributes for a given set of names. Attributes that are currently mapped in an identity profile cannot be deleted.  The `system` and `standard` properties must be set to 'false' before you can delete an identity attribute.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$IdentityAttributeNames = Initialize-IdentityAttributeNames -Ids "name" # IdentityAttributeNames | 

# Bulk delete Identity Attributes
try {
    $Result = Remove-V2024IdentityAttributesInBulk -XSailPointExperimental $XSailPointExperimental -IdentityAttributeNames $IdentityAttributeNames
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024IdentityAttributesInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **IdentityAttributeNames** | [**IdentityAttributeNames**](IdentityAttributeNames.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityAttribute"></a>
# **Get-V2024IdentityAttribute**
> IdentityAttribute Get-V2024IdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

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
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Identity Attribute
try {
    $Result = Get-V2024IdentityAttribute -Name $Name -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The attribute&#39;s technical name. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**IdentityAttribute**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024IdentityAttributes"></a>
# **Get-V2024IdentityAttributes**
> IdentityAttribute[] Get-V2024IdentityAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
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

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$IncludeSystem = $false # Boolean | Include 'system' attributes in the response. (optional) (default to $false)
$IncludeSilent = $false # Boolean | Include 'silent' attributes in the response. (optional) (default to $false)
$SearchableOnly = $false # Boolean | Include only 'searchable' attributes in the response. (optional) (default to $false)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List Identity Attributes
try {
    $Result = Get-V2024IdentityAttributes -XSailPointExperimental $XSailPointExperimental -IncludeSystem $IncludeSystem -IncludeSilent $IncludeSilent -SearchableOnly $SearchableOnly -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024IdentityAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
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

<a id="Send-V2024IdentityAttribute"></a>
# **Send-V2024IdentityAttribute**
> IdentityAttribute Send-V2024IdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IdentityAttribute] <PSCustomObject><br>

Update Identity Attribute

This updates an existing identity attribute.  Making an attribute searchable requires that the `system`, `standard`, and `multi` properties be set to false.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "displayName" # String | The attribute's technical name.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Source1 = Initialize-Source1 -Type "rule" -Properties 
$IdentityAttribute = Initialize-IdentityAttribute -Name "costCenter" -DisplayName "Cost Center" -Standard $false -Type "string" -Multi $false -Searchable $false -System $false -Sources $Source1 # IdentityAttribute | 

# Update Identity Attribute
try {
    $Result = Send-V2024IdentityAttribute -Name $Name -XSailPointExperimental $XSailPointExperimental -IdentityAttribute $IdentityAttribute
} catch {
    Write-Host ("Exception occurred when calling Send-V2024IdentityAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The attribute&#39;s technical name. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **IdentityAttribute** | [**IdentityAttribute**](IdentityAttribute.md)|  | 

### Return type

[**IdentityAttribute**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

