---
id: nerm-form-attributes
title: FormAttributes
pagination_label: FormAttributes
sidebar_label: FormAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FormAttributes', 'NERMFormAttributes'] 
slug: /tools/sdk/powershell/nerm/methods/form-attributes
tags: ['SDK', 'Software Development Kit', 'FormAttributes', 'NERMFormAttributes']
---

# FormAttributes
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMFormAttribute**](#create-form-attribute) | **POST** `/form_attributes` | Create a form attribute
[**Remove-NERMFormAttributeById**](#delete-form-attribute-by-id) | **DELETE** `/form_attributes/{id}` | Delete form attribute
[**Remove-NERMFormAttributeByUid**](#delete-form-attribute-by-uid) | **DELETE** `/form_attributes/{uid}` | Delete form attribute
[**Get-NERMFormAttributeById**](#get-form-attribute-by-id) | **GET** `/form_attributes/{id}` | Get form attribute data
[**Get-NERMFormAttributeByUid**](#get-form-attribute-by-uid) | **GET** `/form_attributes/{uid}` | Get form attribute data
[**Get-NERMFormAttributes**](#get-form-attributes) | **GET** `/form_attributes` | Get form attributes
[**Update-NERMFormAttributeById**](#update-form-attribute-by-id) | **PATCH** `/form_attributes/{id}` | Update form attribute data
[**Update-NERMFormAttributeByUid**](#update-form-attribute-by-uid) | **PATCH** `/form_attributes/{uid}` | Update form attribute data


## create-form-attribute
This endpoint can create a form attribute

[API Spec](https://developer.sailpoint.com/docs/api//create-form-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateFormAttributeRequest | [**CreateFormAttributeRequest**](../models/create-form-attribute-request) | True  | 

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateFormAttributeRequest = @""@

# Create a form attribute

try {
    $Result = ConvertFrom-NERMJsonToCreateFormAttributeRequest -Json $CreateFormAttributeRequest
    New-NERMFormAttribute -CreateFormAttributeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMFormAttribute -CreateFormAttributeRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMFormAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-form-attribute-by-id
Delete form attribute by id

[API Spec](https://developer.sailpoint.com/docs/api//delete-form-attribute-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete form attribute

try {
    Remove-NERMFormAttributeById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMFormAttributeById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMFormAttributeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-form-attribute-by-uid
Delete form attribute by UID

[API Spec](https://developer.sailpoint.com/docs/api//delete-form-attribute-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Delete form attribute

try {
    Remove-NERMFormAttributeByUid 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMFormAttributeByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMFormAttributeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-form-attribute-by-id
Gets info for a specific form attribute by ID

[API Spec](https://developer.sailpoint.com/docs/api//get-form-attribute-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Get form attribute data

try {
    Get-NERMFormAttributeById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMFormAttributeById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMFormAttributeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-form-attribute-by-uid
Get info for a specific form attribute by UID

[API Spec](https://developer.sailpoint.com/docs/api//get-form-attribute-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Get form attribute data

try {
    Get-NERMFormAttributeByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMFormAttributeByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMFormAttributeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-form-attributes
Get defined form attribute in the system

[API Spec](https://developer.sailpoint.com/docs/api//get-form-attributes)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Record Not Found | DelegationsPost404Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get form attributes

try {
    Get-NERMFormAttributes 
    
    # Below is a request that includes all optional parameters
    # Get-NERMFormAttributes  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMFormAttributes"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-form-attribute-by-id
Update info for a specific form attribute by ID

[API Spec](https://developer.sailpoint.com/docs/api//update-form-attribute-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | CreateFormAttributeRequest | [**CreateFormAttributeRequest**](../models/create-form-attribute-request) | True  | 

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$CreateFormAttributeRequest = @""@

# Update form attribute data

try {
    $Result = ConvertFrom-NERMJsonToCreateFormAttributeRequest -Json $CreateFormAttributeRequest
    Update-NERMFormAttributeById -Id $Id -CreateFormAttributeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMFormAttributeById -Id $Id -CreateFormAttributeRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMFormAttributeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-form-attribute-by-uid
Update info for a specific form attribute by UID

[API Spec](https://developer.sailpoint.com/docs/api//update-form-attribute-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateFormAttributeRequest | [**CreateFormAttributeRequest**](../models/create-form-attribute-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetFormAttributes200Response**](../models/get-form-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetFormAttributes200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateFormAttributeRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update form attribute data

try {
    $Result = ConvertFrom-NERMJsonToCreateFormAttributeRequest -Json $CreateFormAttributeRequest
    Update-NERMFormAttributeByUid -CreateFormAttributeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMFormAttributeByUid -CreateFormAttributeRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMFormAttributeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
