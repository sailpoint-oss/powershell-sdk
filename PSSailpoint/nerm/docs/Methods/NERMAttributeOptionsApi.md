---
id: nerm-attribute-options
title: AttributeOptions
pagination_label: AttributeOptions
sidebar_label: AttributeOptions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeOptions', 'NERMAttributeOptions'] 
slug: /tools/sdk/powershell/nerm/methods/attribute-options
tags: ['SDK', 'Software Development Kit', 'AttributeOptions', 'NERMAttributeOptions']
---

# AttributeOptions
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-NERMAttributeOptionById**](#delete-attribute-option-by-id) | **DELETE** `/ne_attribute_options/{id}` | Delete option based attribute value
[**Remove-NERMAttributeOptionByUid**](#delete-attribute-option-by-uid) | **DELETE** `/ne_attribute_options/{uid}` | Delete option value
[**Get-NERMAttributeOptionById**](#get-attribute-option-by-id) | **GET** `/ne_attribute_options/{id}` | Find option based attribute value
[**Get-NERMAttributeOptionByUid**](#get-attribute-option-by-uid) | **GET** `/ne_attribute_options/{uid}` | Find option attribute value
[**Get-NERMAttributeOptions**](#get-attribute-options) | **GET** `/ne_attribute_options` | Get option based attribute values
[**Update-NERMAttributeOptionById**](#patch-attribute-option-by-id) | **PATCH** `/ne_attribute_options/{id}` | Update option based attribute value
[**Update-NERMAttributeOptionByUid**](#patch-attribute-option-by-uid) | **PATCH** `/ne_attribute_options/{uid}` | Update option value
[**Update-NERMAttributeOptions**](#patch-attribute-options) | **PATCH** `/ne_attribute_options` | Update multiple option values
[**Submit-NERMAttributeOption**](#submit-attribute-option) | **POST** `/ne_attribute_option` | Add value to option
[**Submit-NERMAttributeOptions**](#submit-attribute-options) | **POST** `/ne_attribute_options` | Create multiple option values


## delete-attribute-option-by-id
Delete a option based attribute value by id

[API Spec](https://developer.sailpoint.com/docs/api//delete-attribute-option-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**DeleteAttributeOptionById200Response**](../models/delete-attribute-option-by-id200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Confirmation of a deleted object | DeleteAttributeOptionById200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete option based attribute value

try {
    Remove-NERMAttributeOptionById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMAttributeOptionById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMAttributeOptionById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-attribute-option-by-uid
Delete a option based attribute value by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//delete-attribute-option-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**DeleteAttributeOptionById200Response**](../models/delete-attribute-option-by-id200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Confirmation of a deleted object | DeleteAttributeOptionById200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Delete option value

try {
    Remove-NERMAttributeOptionByUid 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMAttributeOptionByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMAttributeOptionByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-attribute-option-by-id
Info for a specific option based attribute value by id

[API Spec](https://developer.sailpoint.com/docs/api//get-attribute-option-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitAttributeOption200Response**](../models/submit-attribute-option200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAttributeOption200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find option based attribute value

try {
    Get-NERMAttributeOptionById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMAttributeOptionById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMAttributeOptionById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-attribute-option-by-uid
Get a specific option based attribute value by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//get-attribute-option-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**SubmitAttributeOption200Response**](../models/submit-attribute-option200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAttributeOption200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Find option attribute value

try {
    Get-NERMAttributeOptionByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMAttributeOptionByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMAttributeOptionByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-attribute-options
Get option based attribute values

[API Spec](https://developer.sailpoint.com/docs/api//get-attribute-options)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | NeAttributeId | **String** |   (optional) | ID of an attribute for filtering
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetAttributeOptions200Response**](../models/get-attribute-options200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetAttributeOptions200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Limit = 5 # Int32 | The maximum number of items to return. (optional)
$Offset = 5 # Int32 | The number of items to skip before starting to collect the result set. (optional)
$Order = "created_at" # String | The field to order results by. (optional)
$NeAttributeId = "33f072dd-13b4-41e1-8ea0-16f2a59b57c8" # String | ID of an attribute for filtering (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get option based attribute values

try {
    Get-NERMAttributeOptions 
    
    # Below is a request that includes all optional parameters
    # Get-NERMAttributeOptions -Limit $Limit -Offset $Offset -Order $Order -NeAttributeId $NeAttributeId -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMAttributeOptions"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-attribute-option-by-id
Update a option based attribute value by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-attribute-option-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitAttributeOptionRequest | [**SubmitAttributeOptionRequest**](../models/submit-attribute-option-request) | True  | 

### Return type
[**SubmitAttributeOption200Response**](../models/submit-attribute-option200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAttributeOption200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitAttributeOptionRequest = @""@

# Update option based attribute value

try {
    $Result = ConvertFrom-NERMJsonToSubmitAttributeOptionRequest -Json $SubmitAttributeOptionRequest
    Update-NERMAttributeOptionById -Id $Id -SubmitAttributeOptionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMAttributeOptionById -Id $Id -SubmitAttributeOptionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMAttributeOptionById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-attribute-option-by-uid
Update a option based attribute value by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//patch-attribute-option-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitAttributeOptionRequest | [**SubmitAttributeOptionRequest**](../models/submit-attribute-option-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**SubmitAttributeOption200Response**](../models/submit-attribute-option200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAttributeOption200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitAttributeOptionRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update option value

try {
    $Result = ConvertFrom-NERMJsonToSubmitAttributeOptionRequest -Json $SubmitAttributeOptionRequest
    Update-NERMAttributeOptionByUid -SubmitAttributeOptionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMAttributeOptionByUid -SubmitAttributeOptionRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMAttributeOptionByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-attribute-options
Update multiple option based attribute values

[API Spec](https://developer.sailpoint.com/docs/api//patch-attribute-options)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitAttributeOptionsRequest | [**SubmitAttributeOptionsRequest**](../models/submit-attribute-options-request) | True  | 

### Return type
[**SubmitAttributeOptions200Response**](../models/submit-attribute-options200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAttributeOptions200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitAttributeOptionsRequest = @""@

# Update multiple option values

try {
    $Result = ConvertFrom-NERMJsonToSubmitAttributeOptionsRequest -Json $SubmitAttributeOptionsRequest
    Update-NERMAttributeOptions -SubmitAttributeOptionsRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMAttributeOptions -SubmitAttributeOptionsRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMAttributeOptions"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-attribute-option
Adds a value to an option based attribute

[API Spec](https://developer.sailpoint.com/docs/api//submit-attribute-option)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitAttributeOptionRequest | [**SubmitAttributeOptionRequest**](../models/submit-attribute-option-request) | True  | 

### Return type
[**SubmitAttributeOption200Response**](../models/submit-attribute-option200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAttributeOption200Response
405 | Invalid input | 

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitAttributeOptionRequest = @""@

# Add value to option

try {
    $Result = ConvertFrom-NERMJsonToSubmitAttributeOptionRequest -Json $SubmitAttributeOptionRequest
    Submit-NERMAttributeOption -SubmitAttributeOptionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMAttributeOption -SubmitAttributeOptionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMAttributeOption"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-attribute-options
Create multiple new option based attribute values

[API Spec](https://developer.sailpoint.com/docs/api//submit-attribute-options)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitAttributeOptionsRequest | [**SubmitAttributeOptionsRequest**](../models/submit-attribute-options-request) | True  | 

### Return type
[**SubmitAttributeOptions200Response**](../models/submit-attribute-options200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAttributeOptions200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitAttributeOptionsRequest = @""@

# Create multiple option values

try {
    $Result = ConvertFrom-NERMJsonToSubmitAttributeOptionsRequest -Json $SubmitAttributeOptionsRequest
    Submit-NERMAttributeOptions -SubmitAttributeOptionsRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMAttributeOptions -SubmitAttributeOptionsRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMAttributeOptions"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
