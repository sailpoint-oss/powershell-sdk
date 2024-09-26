# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024AccessModelMetadataApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2024AccessModelMetadataAttribute**](V2024AccessModelMetadataApi.md#Get-V2024AccessModelMetadataAttribute) | **GET** /access-model-metadata/attributes/{key} | Get Access Model Metadata Attribute
[**Get-V2024AccessModelMetadataAttributeValue**](V2024AccessModelMetadataApi.md#Get-V2024AccessModelMetadataAttributeValue) | **GET** /access-model-metadata/attributes/{key}/values/{value} | Get Access Model Metadata Value
[**Get-V2024AccessModelMetadataAttribute**](V2024AccessModelMetadataApi.md#Get-V2024AccessModelMetadataAttribute) | **GET** /access-model-metadata/attributes | List Access Model Metadata Attributes
[**Get-V2024AccessModelMetadataAttributeValue**](V2024AccessModelMetadataApi.md#Get-V2024AccessModelMetadataAttributeValue) | **GET** /access-model-metadata/attributes/{key}/values | List Access Model Metadata Values


<a id="Get-V2024AccessModelMetadataAttribute"></a>
# **Get-V2024AccessModelMetadataAttribute**
> AttributeDTO Get-V2024AccessModelMetadataAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Access Model Metadata Attribute

Get single Access Model Metadata Attribute

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Key = "iscPrivacy" # String | Technical name of the Attribute.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Access Model Metadata Attribute
try {
    $Result = Get-V2024AccessModelMetadataAttribute -Key $Key -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024AccessModelMetadataAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| Technical name of the Attribute. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**AttributeDTO**](AttributeDTO.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024AccessModelMetadataAttributeValue"></a>
# **Get-V2024AccessModelMetadataAttributeValue**
> AttributeValueDTO Get-V2024AccessModelMetadataAttributeValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Value] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Access Model Metadata Value

Get single Access Model Metadata Attribute Value

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Key = "iscPrivacy" # String | Technical name of the Attribute.
$Value = "public" # String | Technical name of the Attribute value.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Access Model Metadata Value
try {
    $Result = Get-V2024AccessModelMetadataAttributeValue -Key $Key -Value $Value -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024AccessModelMetadataAttributeValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| Technical name of the Attribute. | 
 **Value** | **String**| Technical name of the Attribute value. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**AttributeValueDTO**](AttributeValueDTO.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024AccessModelMetadataAttribute"></a>
# **Get-V2024AccessModelMetadataAttribute**
> AttributeDTO[] Get-V2024AccessModelMetadataAttribute<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Access Model Metadata Attributes

Get a list of Access Model Metadata Attributes

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Filters = "name eq "Privacy"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq*  **type**: *eq*  **status**: *eq*  **objectTypes**: *eq*  Supported composite operators: *and* (optional)

# List Access Model Metadata Attributes
try {
    $Result = Get-V2024AccessModelMetadataAttribute -XSailPointExperimental $XSailPointExperimental -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024AccessModelMetadataAttribute: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *eq*  **type**: *eq*  **status**: *eq*  **objectTypes**: *eq*  Supported composite operators: *and* | [optional] 

### Return type

[**AttributeDTO[]**](AttributeDTO.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024AccessModelMetadataAttributeValue"></a>
# **Get-V2024AccessModelMetadataAttributeValue**
> AttributeValueDTO[] Get-V2024AccessModelMetadataAttributeValue<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

List Access Model Metadata Values

Get a list of Access Model Metadata Attribute Values

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Key = "iscPrivacy" # String | Technical name of the Attribute.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List Access Model Metadata Values
try {
    $Result = Get-V2024AccessModelMetadataAttributeValue -Key $Key -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024AccessModelMetadataAttributeValue: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| Technical name of the Attribute. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**AttributeValueDTO[]**](AttributeValueDTO.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

