---
id: nerm-forms
title: Forms
pagination_label: Forms
sidebar_label: Forms
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Forms', 'NERMForms'] 
slug: /tools/sdk/powershell/nerm/methods/forms
tags: ['SDK', 'Software Development Kit', 'Forms', 'NERMForms']
---

# Forms
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMForm**](#create-form) | **POST** `/forms` | Create a form
[**Remove-NERMFormById**](#delete-form-by-id) | **DELETE** `/forms/{id}` | Delete form by id
[**Remove-NERMFormByUid**](#delete-form-by-uid) | **DELETE** `/forms/{uid}` | Delete form by UID
[**Get-NERMFormById**](#get-form-by-id) | **GET** `/forms/{id}` | Get form data by Id
[**Get-NERMFormByUid**](#get-form-by-uid) | **GET** `/forms/{uid}` | Get form data by UID
[**Get-NERMForms**](#get-forms) | **GET** `/forms` | Get forms
[**Update-NERMFormById**](#update-form-by-id) | **PATCH** `/forms/{id}` | Update form data by id
[**Update-NERMFormByUid**](#update-form-by-uid) | **PATCH** `/forms/{uid}` | Update form data by UID


## create-form
This endpoint can create a form

[API Spec](https://developer.sailpoint.com/docs/api//create-form)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateFormRequest | [**CreateFormRequest**](../models/create-form-request) | True  | 

### Return type
[**GetForms200Response**](../models/get-forms200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetForms200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateFormRequest = @""@

# Create a form

try {
    $Result = ConvertFrom-NERMJsonToCreateFormRequest -Json $CreateFormRequest
    New-NERMForm -CreateFormRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMForm -CreateFormRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMForm"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-form-by-id
Delete form by id

[API Spec](https://developer.sailpoint.com/docs/api//delete-form-by-id)

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
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete form by id

try {
    Remove-NERMFormById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMFormById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMFormById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-form-by-uid
Delete form by UID

[API Spec](https://developer.sailpoint.com/docs/api//delete-form-by-uid)

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
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Delete form by UID

try {
    Remove-NERMFormByUid 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMFormByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMFormByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-form-by-id
Info for a specific form

[API Spec](https://developer.sailpoint.com/docs/api//get-form-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetForms200Response**](../models/get-forms200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetForms200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Get form data by Id

try {
    Get-NERMFormById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMFormById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMFormById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-form-by-uid
Info for a specific form

[API Spec](https://developer.sailpoint.com/docs/api//get-form-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**GetForms200Response**](../models/get-forms200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetForms200Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Get form data by UID

try {
    Get-NERMFormByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMFormByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMFormByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-forms
Get defined forms in the system

[API Spec](https://developer.sailpoint.com/docs/api//get-forms)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**GetForms200Response**](../models/get-forms200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetForms200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
404 | Record Not Found | DelegationsPost404Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get forms

try {
    Get-NERMForms 
    
    # Below is a request that includes all optional parameters
    # Get-NERMForms  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMForms"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-form-by-id
Update info for a specific form

[API Spec](https://developer.sailpoint.com/docs/api//update-form-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | UpdateFormByIdRequest | [**UpdateFormByIdRequest**](../models/update-form-by-id-request) | True  | 

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$UpdateFormByIdRequest = @""@

# Update form data by id

try {
    $Result = ConvertFrom-NERMJsonToUpdateFormByIdRequest -Json $UpdateFormByIdRequest
    Update-NERMFormById -Id $Id -UpdateFormByIdRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMFormById -Id $Id -UpdateFormByIdRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMFormById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-form-by-uid
Update info for a specific form

[API Spec](https://developer.sailpoint.com/docs/api//update-form-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | UpdateFormByIdRequest | [**UpdateFormByIdRequest**](../models/update-form-by-id-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**CreateAttribute201Response**](../models/create-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateAttribute201Response
404 | Record Not Found | DelegationsPost404Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$UpdateFormByIdRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update form data by UID

try {
    $Result = ConvertFrom-NERMJsonToUpdateFormByIdRequest -Json $UpdateFormByIdRequest
    Update-NERMFormByUid -UpdateFormByIdRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMFormByUid -UpdateFormByIdRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMFormByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
