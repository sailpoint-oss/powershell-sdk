# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaAccessModelMetadataApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaAccessModelMetadataAttribute**](BetaAccessModelMetadataApi.md#Get-BetaAccessModelMetadataAttribute) | **GET** /access-model-metadata/attributes/{key} | Get Access Model Metadata Attribute
[**Get-BetaAccessModelMetadataAttributeValue**](BetaAccessModelMetadataApi.md#Get-BetaAccessModelMetadataAttributeValue) | **GET** /access-model-metadata/attributes/{key}/values/{value} | Get Access Model Metadata Value
[**Get-BetaAccessModelMetadataAttribute**](BetaAccessModelMetadataApi.md#Get-BetaAccessModelMetadataAttribute) | **GET** /access-model-metadata/attributes | List Access Model Metadata Attributes
[**Get-BetaAccessModelMetadataAttributeValue**](BetaAccessModelMetadataApi.md#Get-BetaAccessModelMetadataAttributeValue) | **GET** /access-model-metadata/attributes/{key}/values | List Access Model Metadata Values


<a id="Get-BetaAccessModelMetadataAttribute"></a>
# **Get-BetaAccessModelMetadataAttribute**
> AttributeDTO Get-BetaAccessModelMetadataAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>

Get Access Model Metadata Attribute

Get single Access Model Metadata Attribute

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Key = "iscPrivacy" # String | Technical name of the Attribute.

# Get Access Model Metadata Attribute
try {
    $Result = Get-BetaAccessModelMetadataAttribute -Key $Key
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessModelMetadataAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| Technical name of the Attribute. | 

### Return type

[**AttributeDTO**](AttributeDTO.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaAccessModelMetadataAttributeValue"></a>
# **Get-BetaAccessModelMetadataAttributeValue**
> AttributeValueDTO Get-BetaAccessModelMetadataAttributeValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Value] <String><br>

Get Access Model Metadata Value

Get single Access Model Metadata Attribute Value

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Key = "iscPrivacy" # String | Technical name of the Attribute.
$Value = "public" # String | Technical name of the Attribute value.

# Get Access Model Metadata Value
try {
    $Result = Get-BetaAccessModelMetadataAttributeValue -Key $Key -Value $Value
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessModelMetadataAttributeValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| Technical name of the Attribute. | 
 **Value** | **String**| Technical name of the Attribute value. | 

### Return type

[**AttributeValueDTO**](AttributeValueDTO.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaAccessModelMetadataAttribute"></a>
# **Get-BetaAccessModelMetadataAttribute**
> AttributeDTO[] Get-BetaAccessModelMetadataAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Access Model Metadata Attributes

Get a list of Access Model Metadata Attributes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "name eq "Privacy"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq*  **type**: *eq*  **status**: *eq*  **objectTypes**: *eq*  Supported composite operators: *and* (optional)

# List Access Model Metadata Attributes
try {
    $Result = Get-BetaAccessModelMetadataAttribute -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessModelMetadataAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq*  **type**: *eq*  **status**: *eq*  **objectTypes**: *eq*  Supported composite operators: *and* | [optional] 

### Return type

[**AttributeDTO[]**](AttributeDTO.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaAccessModelMetadataAttributeValue"></a>
# **Get-BetaAccessModelMetadataAttributeValue**
> AttributeValueDTO[] Get-BetaAccessModelMetadataAttributeValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>

List Access Model Metadata Values

Get a list of Access Model Metadata Attribute Values

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Key = "iscPrivacy" # String | Technical name of the Attribute.

# List Access Model Metadata Values
try {
    $Result = Get-BetaAccessModelMetadataAttributeValue -Key $Key
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccessModelMetadataAttributeValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| Technical name of the Attribute. | 

### Return type

[**AttributeValueDTO[]**](AttributeValueDTO.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

