---
id: nerm-user-managers
title: UserManagers
pagination_label: UserManagers
sidebar_label: UserManagers
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserManagers', 'NERMUserManagers'] 
slug: /tools/sdk/powershell/nerm/methods/user-managers
tags: ['SDK', 'Software Development Kit', 'UserManagers', 'NERMUserManagers']
---

# UserManagers
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMUserManager**](#get-user-manager) | **GET** `/user_managers/{id}` | Find user-manager relationship
[**Get-NERMUserManagers**](#get-user-managers) | **GET** `/user_managers` | Get user-manager relationships
[**Update-NERMUserManager**](#patch-user-manager) | **PATCH** `/user_managers/{id}` | Update a user-manager relationship
[**Update-NERMUserManagers**](#patch-user-managers) | **PATCH** `/user_managers` | Update multiple user-manager relationships
[**Submit-NERMUserManager**](#submit-user-manager) | **POST** `/user_manager` | Create a new user-manager relationship
[**Submit-NERMUserManagers**](#submit-user-managers) | **POST** `/user_managers` | Create multiple new user-manager relationships


## get-user-manager
Info for a specific user-manager relationship

[API Spec](https://developer.sailpoint.com/docs/api//get-user-manager)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitUserManager200Response**](../models/submit-user-manager200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserManager200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find user-manager relationship

try {
    Get-NERMUserManager -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUserManager -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUserManager"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-user-managers
This endpoint can retrieve user-manager relationships from Lifecycle or you can search for user-manager relationships using parameters

[API Spec](https://developer.sailpoint.com/docs/api//get-user-managers)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | UserId | **String** |   (optional) | The ID of a user for filtering
  Query | ManagerId | **String** |   (optional) | The ID of a user for filtering
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetUserManagers200Response**](../models/get-user-managers200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetUserManagers200Response
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
$UserId = "bba9cfb2-96c1-4acb-ac79-a21732527265" # String | The ID of a user for filtering (optional)
$ManagerId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | The ID of a user for filtering (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get user-manager relationships

try {
    Get-NERMUserManagers 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUserManagers -Limit $Limit -Offset $Offset -Order $Order -UserId $UserId -ManagerId $ManagerId -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUserManagers"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-user-manager
Update a user-manager relationship by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-user-manager)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitUserManagerRequest | [**SubmitUserManagerRequest**](../models/submit-user-manager-request) | True  | 

### Return type
[**SubmitUserManager200Response**](../models/submit-user-manager200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserManager200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitUserManagerRequest = @""@

# Update a user-manager relationship

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserManagerRequest -Json $SubmitUserManagerRequest
    Update-NERMUserManager -Id $Id -SubmitUserManagerRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUserManager -Id $Id -SubmitUserManagerRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUserManager"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-user-managers
Update multiple user-manager relationships

[API Spec](https://developer.sailpoint.com/docs/api//patch-user-managers)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserManagersRequest | [**SubmitUserManagersRequest**](../models/submit-user-managers-request) | True  | 

### Return type
[**SubmitUserManagers200Response**](../models/submit-user-managers200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserManagers200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserManagersRequest = @""@

# Update multiple user-manager relationships

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserManagersRequest -Json $SubmitUserManagersRequest
    Update-NERMUserManagers -SubmitUserManagersRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUserManagers -SubmitUserManagersRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUserManagers"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-user-manager
Create a new user-manager relationship

[API Spec](https://developer.sailpoint.com/docs/api//submit-user-manager)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserManagerRequest | [**SubmitUserManagerRequest**](../models/submit-user-manager-request) | True  | 

### Return type
[**SubmitUserManager200Response**](../models/submit-user-manager200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserManager200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserManagerRequest = @""@

# Create a new user-manager relationship

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserManagerRequest -Json $SubmitUserManagerRequest
    Submit-NERMUserManager -SubmitUserManagerRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUserManager -SubmitUserManagerRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUserManager"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-user-managers
Create multiple new user-manager relationships

[API Spec](https://developer.sailpoint.com/docs/api//submit-user-managers)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserManagersRequest | [**SubmitUserManagersRequest**](../models/submit-user-managers-request) | True  | 

### Return type
[**SubmitUserManagers200Response**](../models/submit-user-managers200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserManagers200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserManagersRequest = @""@

# Create multiple new user-manager relationships

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserManagersRequest -Json $SubmitUserManagersRequest
    Submit-NERMUserManagers -SubmitUserManagersRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUserManagers -SubmitUserManagersRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUserManagers"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
