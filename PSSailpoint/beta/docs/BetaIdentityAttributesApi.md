# PSSailpointBeta.PSSailpointBeta/Api.BetaIdentityAttributesApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaIdentityAttribute**](BetaIdentityAttributesApi.md#Get-BetaIdentityAttribute) | **GET** /identity-attributes/{name} | Get Identity Attribute
[**Get-BetaIdentityAttributes**](BetaIdentityAttributesApi.md#Get-BetaIdentityAttributes) | **GET** /identity-attributes | List Identity Attributes


<a name="Get-BetaIdentityAttribute"></a>
# **Get-BetaIdentityAttribute**
> IdentityAttribute Get-BetaIdentityAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get Identity Attribute

This gets an identity attributes for a given technical name.

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

<a name="Get-BetaIdentityAttributes"></a>
# **Get-BetaIdentityAttributes**
> IdentityAttribute[] Get-BetaIdentityAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSystem] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-IncludeSilent] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SearchableOnly] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Identity Attributes

This gets a collection of identity attributes.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$IncludeSystem = $false # Boolean | Include ""system"" attributes in the response. (optional) (default to $false)
$IncludeSilent = $false # Boolean | Include ""silent"" attributes in the response. (optional) (default to $false)
$SearchableOnly = $false # Boolean | Include only ""searchable"" attributes in the response. (optional) (default to $false)
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
 **IncludeSystem** | **Boolean**| Include &quot;&quot;system&quot;&quot; attributes in the response. | [optional] [default to $false]
 **IncludeSilent** | **Boolean**| Include &quot;&quot;silent&quot;&quot; attributes in the response. | [optional] [default to $false]
 **SearchableOnly** | **Boolean**| Include only &quot;&quot;searchable&quot;&quot; attributes in the response. | [optional] [default to $false]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**IdentityAttribute[]**](IdentityAttribute.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

