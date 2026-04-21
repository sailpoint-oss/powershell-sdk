---
id: nerm-profile-types
title: ProfileTypes
pagination_label: ProfileTypes
sidebar_label: ProfileTypes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypes', 'NERMProfileTypes'] 
slug: /tools/sdk/powershell/nerm/methods/profile-types
tags: ['SDK', 'Software Development Kit', 'ProfileTypes', 'NERMProfileTypes']
---

# ProfileTypes
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-NERMProfileTypeById**](#delete-profile-type-by-id) | **DELETE** `/profile_types/{id}` | Delete profile type
[**Remove-NERMProfileTypeByUid**](#delete-profile-type-by-uid) | **DELETE** `/profile_types/{uid}` | Delete profile type
[**Get-NERMProfileTypeById**](#get-profile-type-by-id) | **GET** `/profile_types/{id}` | Find profile type
[**Get-NERMProfileTypeByUid**](#get-profile-type-by-uid) | **GET** `/profile_types/{uid}` | Find profile type
[**Get-NERMProfileTypes**](#get-profile-types) | **GET** `/profile_types` | Get profile types
[**Update-NERMProfileTypeById**](#patch-profile-type-by-id) | **PATCH** `/profile_types/{id}` | Update a profile type
[**Update-NERMProfileTypeByUid**](#patch-profile-type-by-uid) | **PATCH** `/profile_types/{uid}` | Update a profile type
[**Submit-NERMProfileType**](#submit-profile-type) | **POST** `/profile_type` | Create a profile type


## delete-profile-type-by-id
Delete a profile type. All profiles of that type must first be destroyed before the profile type can be destroyed.

[API Spec](https://developer.sailpoint.com/docs/api//delete-profile-type-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**DeleteProfileTypeById200Response**](../models/delete-profile-type-by-id200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Info about the operation | DeleteProfileTypeById200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete profile type

try {
    Remove-NERMProfileTypeById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMProfileTypeById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMProfileTypeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-profile-type-by-uid
Delete a profile type by UID (user-specified identifier). All profiles of that type must first be destroyed before the profile type can be destroyed.

[API Spec](https://developer.sailpoint.com/docs/api//delete-profile-type-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**DeleteProfileTypeById200Response**](../models/delete-profile-type-by-id200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Info about the operation | DeleteProfileTypeById200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Delete profile type

try {
    Remove-NERMProfileTypeByUid 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMProfileTypeByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMProfileTypeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profile-type-by-id
Find profile type by id

[API Spec](https://developer.sailpoint.com/docs/api//get-profile-type-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitProfileType200Response**](../models/submit-profile-type200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitProfileType200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find profile type

try {
    Get-NERMProfileTypeById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfileTypeById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfileTypeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profile-type-by-uid
Find profile type by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//get-profile-type-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**SubmitProfileType200Response**](../models/submit-profile-type200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitProfileType200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Find profile type

try {
    Get-NERMProfileTypeByUid 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfileTypeByUid -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfileTypeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profile-types
Get option based attribute values

[API Spec](https://developer.sailpoint.com/docs/api//get-profile-types)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | Name | **String** |   (optional) | object name for filtering
  Query | Archived | **Boolean** |   (optional) (default to $false) | Filter by archive status
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetProfileTypes200Response**](../models/get-profile-types200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetProfileTypes200Response
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
$Name = "name" # String | object name for filtering (optional)
$Archived = $false # Boolean | Filter by archive status (optional) (default to $false)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get profile types

try {
    Get-NERMProfileTypes 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfileTypes -Limit $Limit -Offset $Offset -Order $Order -Name $Name -Archived $Archived -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfileTypes"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-profile-type-by-id
Update a profile type by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-profile-type-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitProfileTypeRequest | [**SubmitProfileTypeRequest**](../models/submit-profile-type-request) | True  | 

### Return type
[**SubmitProfileType200Response**](../models/submit-profile-type200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitProfileType200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitProfileTypeRequest = @""@

# Update a profile type

try {
    $Result = ConvertFrom-NERMJsonToSubmitProfileTypeRequest -Json $SubmitProfileTypeRequest
    Update-NERMProfileTypeById -Id $Id -SubmitProfileTypeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMProfileTypeById -Id $Id -SubmitProfileTypeRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMProfileTypeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-profile-type-by-uid
Update a profile type by UID (user-specified identifier)

[API Spec](https://developer.sailpoint.com/docs/api//patch-profile-type-by-uid)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitProfileTypeRequest | [**SubmitProfileTypeRequest**](../models/submit-profile-type-request) | True  | 
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.

### Return type
[**SubmitProfileType200Response**](../models/submit-profile-type200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitProfileType200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitProfileTypeRequest = @""@
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)

# Update a profile type

try {
    $Result = ConvertFrom-NERMJsonToSubmitProfileTypeRequest -Json $SubmitProfileTypeRequest
    Update-NERMProfileTypeByUid -SubmitProfileTypeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMProfileTypeByUid -SubmitProfileTypeRequest $Result -Uid $Uid  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMProfileTypeByUid"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-profile-type
Create a profile type

[API Spec](https://developer.sailpoint.com/docs/api//submit-profile-type)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitProfileTypeRequest | [**SubmitProfileTypeRequest**](../models/submit-profile-type-request) | True  | 

### Return type
[**SubmitProfileType200Response**](../models/submit-profile-type200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitProfileType200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitProfileTypeRequest = @""@

# Create a profile type

try {
    $Result = ConvertFrom-NERMJsonToSubmitProfileTypeRequest -Json $SubmitProfileTypeRequest
    Submit-NERMProfileType -SubmitProfileTypeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMProfileType -SubmitProfileTypeRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMProfileType"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
