---
id: generic
title: Generic
pagination_label: Generic
sidebar_label: Generic
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Generic', 'Generic'] 
slug: /tools/sdk/powershell/generic/methods/generic
tags: ['SDK', 'Software Development Kit', 'Generic', 'Generic']
---

# Generic
  Call any SailPoint Identity Security versioned API by its path. The path includes the API version, for example &#x60;sources/v1&#x60; or &#x60;sources/v2/{sourceId}/provisioning-policies&#x60;. 
  

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-GenericDelete**](#generic-delete) | **DELETE** `/{path}` | Generic DELETE request
[**Invoke-GenericGet**](#generic-get) | **GET** `/{path}` | Generic GET request
[**Invoke-GenericPatch**](#generic-patch) | **PATCH** `/{path}` | Generic PATCH request
[**Invoke-GenericPost**](#generic-post) | **POST** `/{path}` | Generic POST request
[**Invoke-GenericPut**](#generic-put) | **PUT** `/{path}` | Generic PUT request


## generic-delete
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Sends a DELETE request to any versioned API path.

[API Spec](https://developer.sailpoint.com/docs/api/generic-delete)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Path | **String** | True  | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
   | XSailPointExperimental | **String** |   (optional) | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs.

### Return type
[**AnyType**](https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Successful response. The body is the JSON returned by the API. | AnyType
204 | No content. | 

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Path = "accounts/v1" # String | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
$XSailPointExperimental = "true" # String | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs. (optional)

# Generic DELETE request

try {
    Invoke-GenericDelete -Path $Path 
    
    # Below is a request that includes all optional parameters
    # Invoke-GenericDelete -Path $Path -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-GenericDelete"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## generic-get
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Sends a GET request to any versioned API path, for example `sources/v1/{id}/schemas` or `sources/v2/{sourceId}/provisioning-policies`.

[API Spec](https://developer.sailpoint.com/docs/api/generic-get)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Path | **String** | True  | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
  Query | Limit | **Int32** |   (optional) | Max number of results to return. See [Standard Collection Parameters](https://developer.sailpoint.com/docs/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) | Offset into the full result set. Usually specified with *limit* to paginate through the results.
  Query | Count | **Boolean** |   (optional) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/docs/standard-collection-parameters#filtering-results).
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/docs/standard-collection-parameters#sorting-results).
   | XSailPointExperimental | **String** |   (optional) | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs.

### Return type
[**AnyType**](https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Successful response. The body is the JSON returned by the API. | AnyType
204 | No content. | 

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Path = "accounts/v1" # String | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
$Limit = 250 # Int32 | Max number of results to return. See [Standard Collection Parameters](https://developer.sailpoint.com/docs/standard-collection-parameters) for more information. (optional)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. (optional)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored. (optional)
$Filters = 'name eq "Example"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/docs/standard-collection-parameters#filtering-results). (optional)
$Sorters = "name,-created" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/docs/standard-collection-parameters#sorting-results). (optional)
$XSailPointExperimental = "true" # String | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs. (optional)

# Generic GET request

try {
    Invoke-GenericGet -Path $Path 
    
    # Below is a request that includes all optional parameters
    # Invoke-GenericGet -Path $Path -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-GenericGet"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## generic-patch
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Sends a PATCH request to any versioned API path. The body is a JSON Patch document (RFC 6902): a list of operations such as `[{"op": "replace", "path": "/description", "value": "New description"}]`.

[API Spec](https://developer.sailpoint.com/docs/api/generic-patch)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Path | **String** | True  | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
   | XSailPointExperimental | **String** |   (optional) | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs.
 Body  | RequestBody | **AnyType** |   (optional) | 

### Return type
[**AnyType**](https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Successful response. The body is the JSON returned by the API. | AnyType
204 | No content. | 

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$Path = "accounts/v1" # String | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
$XSailPointExperimental = "true" # String | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs. (optional)
$RequestBody =  # AnyType |  (optional)

# Generic PATCH request

try {
    Invoke-GenericPatch -Path $Path 
    
    # Below is a request that includes all optional parameters
    # Invoke-GenericPatch -Path $Path -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-GenericPatch"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## generic-post
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Sends a POST request with a JSON body to any versioned API path.

[API Spec](https://developer.sailpoint.com/docs/api/generic-post)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Path | **String** | True  | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
   | XSailPointExperimental | **String** |   (optional) | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs.
 Body  | RequestBody | **AnyType** |   (optional) | 

### Return type
[**AnyType**](https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Successful response. The body is the JSON returned by the API. | AnyType
204 | No content. | 

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Path = "accounts/v1" # String | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
$XSailPointExperimental = "true" # String | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs. (optional)
$RequestBody =  # AnyType |  (optional)

# Generic POST request

try {
    Invoke-GenericPost -Path $Path 
    
    # Below is a request that includes all optional parameters
    # Invoke-GenericPost -Path $Path -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-GenericPost"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## generic-put
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Sends a PUT request with a JSON body to any versioned API path.

[API Spec](https://developer.sailpoint.com/docs/api/generic-put)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Path | **String** | True  | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
   | XSailPointExperimental | **String** |   (optional) | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs.
 Body  | RequestBody | **AnyType** |   (optional) | 

### Return type
[**AnyType**](https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Successful response. The body is the JSON returned by the API. | AnyType
204 | No content. | 

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Path = "accounts/v1" # String | API path relative to the tenant base URL, including the API version, for example `accounts/v1`, `sources/v1/2c9180835d2e5168015d32f890ca1581` or `sources/v2/2c9180835d2e5168015d32f890ca1581/provisioning-policies`. Use whichever version the endpoint has. A leading slash is optional. Slashes separate path segments, and the SDK URL-encodes each segment, so pass the segments unencoded. Anything after a `?` is sent as query parameters, for example `accounts/v1?detailLevel=SLIM`.
$XSailPointExperimental = "true" # String | Set this header to `true` to call an experimental API. The SDK configuration must also enable experimental APIs. (optional)
$RequestBody =  # AnyType |  (optional)

# Generic PUT request

try {
    Invoke-GenericPut -Path $Path 
    
    # Below is a request that includes all optional parameters
    # Invoke-GenericPut -Path $Path -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-GenericPut"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
