---
id: nerm-users
title: Users
pagination_label: Users
sidebar_label: Users
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Users', 'NERMUsers'] 
slug: /tools/sdk/powershell/nerm/methods/users
tags: ['SDK', 'Software Development Kit', 'Users', 'NERMUsers']
---

# Users
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-NERMUser**](#delete-user) | **DELETE** `/users/{id}` | Delete a user
[**Get-NERMUser**](#get-user) | **GET** `/users/{id}` | Find user by id
[**Get-NERMUserAvatar**](#get-user-avatar) | **GET** `/users/{id}/avatar` | Retrieves  URL user avatar
[**Get-NERMUsers**](#get-users) | **GET** `/users` | Get users
[**Update-NERMUser**](#patch-user) | **PATCH** `/users/{id}` | Update a user by id
[**Update-NERMUsers**](#patch-users) | **PATCH** `/users` | Update multiple users
[**Submit-NERMUser**](#submit-user) | **POST** `/user` | Create a new user
[**Submit-NERMUserAvatar**](#submit-user-avatar) | **POST** `/users/{id}/avatar` | Uploads new user avatar
[**Submit-NERMUsers**](#submit-users) | **POST** `/users` | Create multiple new users


## delete-user
Delete a user

[API Spec](https://developer.sailpoint.com/docs/api//delete-user)

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

# Delete a user

try {
    Remove-NERMUser -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMUser -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMUser"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-user
Info for a specific user

[API Spec](https://developer.sailpoint.com/docs/api//get-user)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitUser200Response**](../models/submit-user200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUser200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find user by id

try {
    Get-NERMUser -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUser -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUser"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-user-avatar
Retrieves the URL of the user avatar

[API Spec](https://developer.sailpoint.com/docs/api//get-user-avatar)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**Url**](../models/url)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | Url
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Retrieves  URL user avatar

try {
    Get-NERMUserAvatar -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUserAvatar -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUserAvatar"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-users
This endpoint can retrieve users from Lifecycle or you can search for users using parameters

[API Spec](https://developer.sailpoint.com/docs/api//get-users)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | Name | **String** |   (optional) | object name for filtering
  Query | Login | **String** |   (optional) | The user login to search by
  Query | Title | **String** |   (optional) | The user title to search by
  Query | UserStatus | **String** |   (optional) | user status value for filtering
  Query | Type | **String** |   (optional) | user type
  Query | Email | **String** |   (optional) | The user email to search by
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").
  Query | SailpointIdentityId | **String** |   (optional) | SailPoint identity ID

### Return type
[**GetUsers200Response**](../models/get-users200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetUsers200Response
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
$Login = "jane.doe" # String | The user login to search by (optional)
$Title = "Marketing Director" # String | The user title to search by (optional)
$UserStatus = "Active" # String | user status value for filtering (optional)
$Type = "NeprofileUser" # String | user type (optional)
$Email = "support@sailpoint.com" # String | The user email to search by (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)
$SailpointIdentityId = "9496f8d6ddab49c0bef1e9ee6f1b835a" # String | SailPoint identity ID (optional)

# Get users

try {
    Get-NERMUsers 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUsers -Limit $Limit -Offset $Offset -Order $Order -Name $Name -Login $Login -Title $Title -UserStatus $UserStatus -Type $Type -Email $Email -Metadata $Metadata -SailpointIdentityId $SailpointIdentityId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUsers"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-user
Update a user by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-user)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitUserRequest | [**SubmitUserRequest**](../models/submit-user-request) | True  | 

### Return type
[**SubmitUser200Response**](../models/submit-user200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUser200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitUserRequest = @""@

# Update a user by id

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserRequest -Json $SubmitUserRequest
    Update-NERMUser -Id $Id -SubmitUserRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUser -Id $Id -SubmitUserRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUser"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-users
Update multiple users

[API Spec](https://developer.sailpoint.com/docs/api//patch-users)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUsersRequest | [**SubmitUsersRequest**](../models/submit-users-request) | True  | 

### Return type
[**SubmitUsers200Response**](../models/submit-users200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUsers200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUsersRequest = @""@

# Update multiple users

try {
    $Result = ConvertFrom-NERMJsonToSubmitUsersRequest -Json $SubmitUsersRequest
    Update-NERMUsers -SubmitUsersRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUsers -SubmitUsersRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUsers"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-user
Create a new user

[API Spec](https://developer.sailpoint.com/docs/api//submit-user)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserRequest | [**SubmitUserRequest**](../models/submit-user-request) | True  | 

### Return type
[**SubmitUser200Response**](../models/submit-user200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUser200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserRequest = @""@

# Create a new user

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserRequest -Json $SubmitUserRequest
    Submit-NERMUser -SubmitUserRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUser -SubmitUserRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUser"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-user-avatar
Uploads a new user avatar

[API Spec](https://developer.sailpoint.com/docs/api//submit-user-avatar)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
   | File | **System.IO.FileInfo** |   (optional) | 

### Return type
[**Url**](../models/url)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | Url
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: multipart/form-data
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$File =  # System.IO.FileInfo |  (optional)

# Uploads new user avatar

try {
    Submit-NERMUserAvatar -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUserAvatar -Id $Id -File $File  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUserAvatar"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-users
Create multiple new users

[API Spec](https://developer.sailpoint.com/docs/api//submit-users)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUsersRequest | [**SubmitUsersRequest**](../models/submit-users-request) | True  | 

### Return type
[**SubmitUsers200Response**](../models/submit-users200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUsers200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUsersRequest = @""@

# Create multiple new users

try {
    $Result = ConvertFrom-NERMJsonToSubmitUsersRequest -Json $SubmitUsersRequest
    Submit-NERMUsers -SubmitUsersRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUsers -SubmitUsersRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUsers"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
