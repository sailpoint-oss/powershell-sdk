---
id: nerm-page-contents
title: PageContents
pagination_label: PageContents
sidebar_label: PageContents
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageContents', 'NERMPageContents'] 
slug: /tools/sdk/powershell/nerm/methods/page-contents
tags: ['SDK', 'Software Development Kit', 'PageContents', 'NERMPageContents']
---

# PageContents
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMPageContent**](#create-page-content) | **POST** `/page_contents` | Create a page content entry
[**Remove-NERMPageContentById**](#delete-page-content-by-id) | **DELETE** `/page_contents/{id}` | Delete page content record
[**Remove-NERMPageContentByUid**](#delete-page-content-by-uid) | **DELETE** `/page_contents/{uid}` | Delete page content record
[**Get-NERMPageContentById**](#get-page-content-by-id) | **GET** `/page_contents/{id}` | Find page content record
[**Get-NERMPageContentByUid**](#get-page-content-by-uid) | **GET** `/page_contents/{uid}` | Find a page content record
[**Get-NERMPageContents**](#get-page-contents) | **GET** `/page_contents` | Get page contents data
[**Update-NERMPageContentById**](#update-page-content-by-id) | **PATCH** `/page_contents/{id}` | Update page content record
[**Update-NERMPageContentByUid**](#update-page-content-by-uid) | **PATCH** `/page_contents/{uid}` | Update page content record


## create-page-content
This endpoint can create page content

[API Spec](https://developer.sailpoint.com/docs/api//create-page-content)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreatePageContentRequest | [**CreatePageContentRequest**](../models/create-page-content-request) | True  | 

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreatePageContentRequest = @""@

# Create a page content entry

try {
    $Result = ConvertFrom-NERMJsonToCreatePageContentRequest -Json $CreatePageContentRequest
    New-NERMPageContent -CreatePageContentRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMPageContent -CreatePageContentRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMPageContent"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-page-content-by-id
Delete page content by id

[API Spec](https://developer.sailpoint.com/docs/api//delete-page-content-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete page content record

try {
    Remove-NERMPageContentById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMPageContentById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMPageContentById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-page-content-by-uid
Delete page content by by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//delete-page-content-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete page content record

try {
    Remove-NERMPageContentByUid -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMPageContentByUid -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMPageContentByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-content-by-id
Info for a specific page content record

[API Spec](https://developer.sailpoint.com/docs/api//get-page-content-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find page content record

try {
    Get-NERMPageContentById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageContentById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageContentById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-content-by-uid
Info for a specific page content record by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//get-page-content-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Find a page content record

try {
    Get-NERMPageContentByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageContentByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageContentByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-contents
This endpoint can retrieve page content data.

[API Spec](https://developer.sailpoint.com/docs/api//get-page-contents)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get page contents data

try {
    Get-NERMPageContents 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageContents  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageContents"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-page-content-by-id
Update info for a specific page content record by id

[API Spec](https://developer.sailpoint.com/docs/api//update-page-content-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | CreatePageContentRequest | [**CreatePageContentRequest**](../models/create-page-content-request) | True  | 

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$CreatePageContentRequest = @""@

# Update page content record

try {
    $Result = ConvertFrom-NERMJsonToCreatePageContentRequest -Json $CreatePageContentRequest
    Update-NERMPageContentById -Id $Id -CreatePageContentRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMPageContentById -Id $Id -CreatePageContentRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMPageContentById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-page-content-by-uid
Update info for a specific page content record by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//update-page-content-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreatePageContentRequest | [**CreatePageContentRequest**](../models/create-page-content-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetPageContents200Response**](../models/get-page-contents200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContents200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreatePageContentRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update page content record

try {
    $Result = ConvertFrom-NERMJsonToCreatePageContentRequest -Json $CreatePageContentRequest
    Update-NERMPageContentByUid -CreatePageContentRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMPageContentByUid -CreatePageContentRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMPageContentByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
