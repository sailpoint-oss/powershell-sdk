---
id: nerm-page-elements
title: PageElements
pagination_label: PageElements
sidebar_label: PageElements
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageElements', 'NERMPageElements'] 
slug: /tools/sdk/powershell/nerm/methods/page-elements
tags: ['SDK', 'Software Development Kit', 'PageElements', 'NERMPageElements']
---

# PageElements
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMPageElement**](#create-page-element) | **POST** `/page_elements` | Create a page element entry
[**Remove-NERMPageElementById**](#delete-page-element-by-id) | **DELETE** `/page_elements/{id}` | Delete page element
[**Remove-NERMPageElementByUid**](#delete-page-element-by-uid) | **DELETE** `/page_elements/{uid}` | Delete page element
[**Get-NERMPageElementById**](#get-page-element-by-id) | **GET** `/page_elements/{id}` | Find a page element
[**Get-NERMPageElementByUid**](#get-page-element-by-uid) | **GET** `/page_elements/{uid}` | Find page element
[**Get-NERMPageElements**](#get-page-elements) | **GET** `/page_elements` | Get page element data
[**Update-NERMPageElementById**](#update-page-element-by-id) | **PATCH** `/page_elements/{id}` | Update page element
[**Update-NERMPageElementByUid**](#update-page-element-by-uid) | **PATCH** `/page_elements/{uid}` | Update page element


## create-page-element
Creates a page element.

[API Spec](https://developer.sailpoint.com/docs/api//create-page-element)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreatePageElementRequest | [**CreatePageElementRequest**](../models/create-page-element-request) | True  | 

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreatePageElementRequest = @""@

# Create a page element entry

try {
    $Result = ConvertFrom-NERMJsonToCreatePageElementRequest -Json $CreatePageElementRequest
    New-NERMPageElement -CreatePageElementRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMPageElement -CreatePageElementRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMPageElement"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-page-element-by-id
Delete page element by id

[API Spec](https://developer.sailpoint.com/docs/api//delete-page-element-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete page element

try {
    Remove-NERMPageElementById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMPageElementById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMPageElementById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-page-element-by-uid
Delete page element by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//delete-page-element-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Delete page element

try {
    Remove-NERMPageElementByUid 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMPageElementByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMPageElementByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-element-by-id
Info for a specific page element record

[API Spec](https://developer.sailpoint.com/docs/api//get-page-element-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find a page element

try {
    Get-NERMPageElementById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageElementById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageElementById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-element-by-uid
Info for a specific page element record by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//get-page-element-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Find page element

try {
    Get-NERMPageElementByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageElementByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageElementByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-elements
Retrieves page elements data.

[API Spec](https://developer.sailpoint.com/docs/api//get-page-elements)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get page element data

try {
    Get-NERMPageElements 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageElements  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageElements"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-page-element-by-id
Update info for a specific page element record by id

[API Spec](https://developer.sailpoint.com/docs/api//update-page-element-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | CreatePageElementRequest | [**CreatePageElementRequest**](../models/create-page-element-request) | True  | 

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$CreatePageElementRequest = @""@

# Update page element

try {
    $Result = ConvertFrom-NERMJsonToCreatePageElementRequest -Json $CreatePageElementRequest
    Update-NERMPageElementById -Id $Id -CreatePageElementRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMPageElementById -Id $Id -CreatePageElementRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMPageElementById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-page-element-by-uid
Update info for a specific page element record by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//update-page-element-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreatePageElementRequest | [**CreatePageElementRequest**](../models/create-page-element-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetPageElements200Response**](../models/get-page-elements200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageElements200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreatePageElementRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update page element

try {
    $Result = ConvertFrom-NERMJsonToCreatePageElementRequest -Json $CreatePageElementRequest
    Update-NERMPageElementByUid -CreatePageElementRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMPageElementByUid -CreatePageElementRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMPageElementByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
