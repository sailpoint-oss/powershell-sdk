---
id: nerm-attributes
title: Attributes
pagination_label: Attributes
sidebar_label: Attributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Attributes', 'NERMAttributes'] 
slug: /tools/sdk/powershell/nerm/methods/attributes
tags: ['SDK', 'Software Development Kit', 'Attributes', 'NERMAttributes']
---

# Attributes
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMAttribute**](#create-attribute) | **POST** `/ne_attributes` | Create an attribute
[**Remove-NERMAttributeById**](#delete-attribute-by-id) | **DELETE** `/ne_attributes/{id}` | Delete attribute by id
[**Remove-NERMAttributeByUid**](#delete-attribute-by-uid) | **DELETE** `/ne_attributes/{uid}` | Delete attribute
[**Get-NERMAttributeById**](#get-attribute-by-id) | **GET** `/ne_attributes/{id}` | Find attribute data by id
[**Get-NERMAttributeByUid**](#get-attribute-by-uid) | **GET** `/ne_attributes/{uid}` | Find attribute data
[**Get-NERMAttributes**](#get-attributes) | **GET** `/ne_attributes` | Get attribute data in bulk
[**Update-NERMAttributeById**](#update-attribute-by-id) | **PATCH** `/ne_attributes/{id}` | Update attribute data by id
[**Update-NERMAttributeByUid**](#update-attribute-by-uid) | **PATCH** `/ne_attributes/{uid}` | Update attribute data


## create-attribute
This endpoint can create an attribute

[API Spec](https://developer.sailpoint.com/docs/api//create-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateAttributeRequest | [**CreateAttributeRequest**](../models/create-attribute-request) | True  | 

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Expected response to a valid request | CreateAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateAttributeRequest = @""@

# Create an attribute

try {
    $Result = ConvertFrom-NERMJsonToCreateAttributeRequest -Json $CreateAttributeRequest
    New-NERMAttribute -CreateAttributeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMAttribute -CreateAttributeRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-attribute-by-id
Delete attribute by id

[API Spec](https://developer.sailpoint.com/docs/api//delete-attribute-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete attribute by id

try {
    Remove-NERMAttributeById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMAttributeById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMAttributeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-attribute-by-uid
Delete attribute by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//delete-attribute-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Delete attribute

try {
    Remove-NERMAttributeByUid 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMAttributeByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMAttributeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-attribute-by-id
Info for a specific attribute

[API Spec](https://developer.sailpoint.com/docs/api//get-attribute-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find attribute data by id

try {
    Get-NERMAttributeById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMAttributeById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMAttributeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-attribute-by-uid
Info for a specific attribute by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//get-attribute-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Find attribute data

try {
    Get-NERMAttributeByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMAttributeByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMAttributeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-attributes
This endpoint can retrieve attribute data in bulk from Lifecycle or you can search for attributes using parameters

[API Spec](https://developer.sailpoint.com/docs/api//get-attributes)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | Label | **String** |   (optional) | The attribute label to filter by
  Query | DataType | **String** |   (optional) | The attribute data type to filter by
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetAttributes200Response**](../models/get-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetAttributes200Response
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
$Label = "birthday" # String | The attribute label to filter by (optional)
$DataType = "text field" # String | The attribute data type to filter by (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get attribute data in bulk

try {
    Get-NERMAttributes 
    
    # Below is a request that includes all optional parameters
    # Get-NERMAttributes -Limit $Limit -Offset $Offset -Order $Order -Label $Label -DataType $DataType -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMAttributes"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-attribute-by-id
Update info for a specific attribute

[API Spec](https://developer.sailpoint.com/docs/api//update-attribute-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | CreateAttributeRequest | [**CreateAttributeRequest**](../models/create-attribute-request) | True  | 

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$CreateAttributeRequest = @""@

# Update attribute data by id

try {
    $Result = ConvertFrom-NERMJsonToCreateAttributeRequest -Json $CreateAttributeRequest
    Update-NERMAttributeById -Id $Id -CreateAttributeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMAttributeById -Id $Id -CreateAttributeRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMAttributeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-attribute-by-uid
Update info for a specific attribute by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//update-attribute-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateAttributeRequest | [**CreateAttributeRequest**](../models/create-attribute-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateAttributeRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update attribute data

try {
    $Result = ConvertFrom-NERMJsonToCreateAttributeRequest -Json $CreateAttributeRequest
    Update-NERMAttributeByUid -CreateAttributeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMAttributeByUid -CreateAttributeRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMAttributeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
