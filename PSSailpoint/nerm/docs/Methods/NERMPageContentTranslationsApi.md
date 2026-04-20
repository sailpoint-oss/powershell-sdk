---
id: nerm-page-content-translations
title: PageContentTranslations
pagination_label: PageContentTranslations
sidebar_label: PageContentTranslations
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PageContentTranslations', 'NERMPageContentTranslations'] 
slug: /tools/sdk/powershell/nerm/methods/page-content-translations
tags: ['SDK', 'Software Development Kit', 'PageContentTranslations', 'NERMPageContentTranslations']
---

# PageContentTranslations
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMPageContentTranslation**](#create-page-content-translation) | **POST** `/page_content_translations` | Create page content translation
[**Remove-NERMPageContentTranslationById**](#delete-page-content-translation-by-id) | **DELETE** `/page_content_translations/{id}` | Delete page content translation
[**Remove-NERMPageContentTranslationByUid**](#delete-page-content-translation-by-uid) | **DELETE** `/page_content_translations/{uid}` | Delete page content translation
[**Get-NERMPageContentTranslation**](#get-page-content-translation) | **GET** `/page_content_translations` | Get page contents translation
[**Get-NERMPageContentTranslationById**](#get-page-content-translation-by-id) | **GET** `/page_content_translations/{id}` | Find page content translation
[**Get-NERMPageContentTranslationByUid**](#get-page-content-translation-by-uid) | **GET** `/page_content_translations/{uid}` | Find page content translation
[**Update-NERMPageContentTranslationById**](#update-page-content-translation-by-id) | **PATCH** `/page_content_translations/{id}` | Update page content translation
[**Update-NERMPageContentTranslationByUid**](#update-page-content-translation-by-uid) | **PATCH** `/page_content_translations/{uid}` | Update page content translation


## create-page-content-translation
Create a page content translation record.

[API Spec](https://developer.sailpoint.com/docs/api//create-page-content-translation)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreatePageContentTranslationRequest | [**CreatePageContentTranslationRequest**](../models/create-page-content-translation-request) | True  | 

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreatePageContentTranslationRequest = @""@

# Create page content translation

try {
    $Result = ConvertFrom-NERMJsonToCreatePageContentTranslationRequest -Json $CreatePageContentTranslationRequest
    New-NERMPageContentTranslation -CreatePageContentTranslationRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMPageContentTranslation -CreatePageContentTranslationRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMPageContentTranslation"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-page-content-translation-by-id
Delete page content translation by id

[API Spec](https://developer.sailpoint.com/docs/api//delete-page-content-translation-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete page content translation

try {
    Remove-NERMPageContentTranslationById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMPageContentTranslationById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMPageContentTranslationById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-page-content-translation-by-uid
Delete page content translation by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//delete-page-content-translation-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete page content translation

try {
    Remove-NERMPageContentTranslationByUid -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMPageContentTranslationByUid -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMPageContentTranslationByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-content-translation
This endpoint can retrieve page content translation data.

[API Spec](https://developer.sailpoint.com/docs/api//get-page-content-translation)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get page contents translation

try {
    Get-NERMPageContentTranslation 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageContentTranslation  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageContentTranslation"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-content-translation-by-id
Info for a specific page content translation record by Id

[API Spec](https://developer.sailpoint.com/docs/api//get-page-content-translation-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find page content translation

try {
    Get-NERMPageContentTranslationById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageContentTranslationById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageContentTranslationById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-page-content-translation-by-uid
Info for a specific page content translation record by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//get-page-content-translation-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Find page content translation

try {
    Get-NERMPageContentTranslationByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMPageContentTranslationByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMPageContentTranslationByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-page-content-translation-by-id
Update info for a specific page content translation record by id

[API Spec](https://developer.sailpoint.com/docs/api//update-page-content-translation-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | UpdatePageContentTranslationByIdRequest | [**UpdatePageContentTranslationByIdRequest**](../models/update-page-content-translation-by-id-request) | True  | 

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$UpdatePageContentTranslationByIdRequest = @""@

# Update page content translation

try {
    $Result = ConvertFrom-NERMJsonToUpdatePageContentTranslationByIdRequest -Json $UpdatePageContentTranslationByIdRequest
    Update-NERMPageContentTranslationById -Id $Id -UpdatePageContentTranslationByIdRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMPageContentTranslationById -Id $Id -UpdatePageContentTranslationByIdRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMPageContentTranslationById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-page-content-translation-by-uid
Update info for a specific page content translation record by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//update-page-content-translation-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | UpdatePageContentTranslationByIdRequest | [**UpdatePageContentTranslationByIdRequest**](../models/update-page-content-translation-by-id-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetPageContentTranslation200Response**](../models/get-page-content-translation200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetPageContentTranslation200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$UpdatePageContentTranslationByIdRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update page content translation

try {
    $Result = ConvertFrom-NERMJsonToUpdatePageContentTranslationByIdRequest -Json $UpdatePageContentTranslationByIdRequest
    Update-NERMPageContentTranslationByUid -UpdatePageContentTranslationByIdRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMPageContentTranslationByUid -UpdatePageContentTranslationByIdRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMPageContentTranslationByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
