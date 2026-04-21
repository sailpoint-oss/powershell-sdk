---
id: nerm-user-roles
title: UserRoles
pagination_label: UserRoles
sidebar_label: UserRoles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserRoles', 'NERMUserRoles'] 
slug: /tools/sdk/powershell/nerm/methods/user-roles
tags: ['SDK', 'Software Development Kit', 'UserRoles', 'NERMUserRoles']
---

# UserRoles
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-NERMUserRole**](#delete-user-role) | **DELETE** `/user_role/{id}` | Delete a user role assignment
[**Get-NERMUserRole**](#get-user-role) | **GET** `/user_roles/{id}` | Find user role pairing
[**Get-NERMUserRoles**](#get-user-roles) | **GET** `/user_roles` | Get user role pairings
[**Update-NERMUserRole**](#patch-user-role) | **PATCH** `/user_roles/{id}` | Update a user role pairing
[**Update-NERMUserRoles**](#patch-user-roles) | **PATCH** `/user_roles` | Update multiple user role pairings
[**Submit-NERMUserRole**](#submit-user-role) | **POST** `/user_role` | Assign new role to user
[**Submit-NERMUserRoles**](#submit-user-roles) | **POST** `/user_roles` | Create new user role pairings


## delete-user-role
Delete a user role assignment

[API Spec](https://developer.sailpoint.com/docs/api//delete-user-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SystemCollectionsHashtable**](https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | User role was destroyed | SystemCollectionsHashtable
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete a user role assignment

try {
    Remove-NERMUserRole -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMUserRole -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMUserRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-user-role
Info for a specific user role pairing

[API Spec](https://developer.sailpoint.com/docs/api//get-user-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitUserRole200Response**](../models/submit-user-role200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserRole200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find user role pairing

try {
    Get-NERMUserRole -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUserRole -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUserRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-user-roles
This endpoint can retrieve user role pairings from Lifecycle or you can search for user role pairings using parameters

[API Spec](https://developer.sailpoint.com/docs/api//get-user-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | UserId | **String** |   (optional) | The ID of a user for filtering
  Query | RoleId | **String** |   (optional) | The ID of a role for filtering
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetUserRoles200Response**](../models/get-user-roles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetUserRoles200Response
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
$RoleId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | The ID of a role for filtering (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get user role pairings

try {
    Get-NERMUserRoles 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUserRoles -Limit $Limit -Offset $Offset -Order $Order -UserId $UserId -RoleId $RoleId -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUserRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-user-role
Update a user role pairing by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-user-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitUserRoleRequest | [**SubmitUserRoleRequest**](../models/submit-user-role-request) | True  | 

### Return type
[**SubmitUserRole200Response**](../models/submit-user-role200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserRole200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitUserRoleRequest = @""@

# Update a user role pairing

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserRoleRequest -Json $SubmitUserRoleRequest
    Update-NERMUserRole -Id $Id -SubmitUserRoleRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUserRole -Id $Id -SubmitUserRoleRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUserRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-user-roles
Update multiple user role pairings

[API Spec](https://developer.sailpoint.com/docs/api//patch-user-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserRolesRequest | [**SubmitUserRolesRequest**](../models/submit-user-roles-request) | True  | 

### Return type
[**SubmitUserRoles200Response**](../models/submit-user-roles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserRoles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserRolesRequest = @""@

# Update multiple user role pairings

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserRolesRequest -Json $SubmitUserRolesRequest
    Update-NERMUserRoles -SubmitUserRolesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUserRoles -SubmitUserRolesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUserRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-user-role
Assign a new role to a user

[API Spec](https://developer.sailpoint.com/docs/api//submit-user-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserRoleRequest | [**SubmitUserRoleRequest**](../models/submit-user-role-request) | True  | 

### Return type
[**SubmitUserRole200Response**](../models/submit-user-role200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserRole200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserRoleRequest = @""@

# Assign new role to user

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserRoleRequest -Json $SubmitUserRoleRequest
    Submit-NERMUserRole -SubmitUserRoleRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUserRole -SubmitUserRoleRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUserRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-user-roles
Create multiple new user role pairings

[API Spec](https://developer.sailpoint.com/docs/api//submit-user-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserRolesRequest | [**SubmitUserRolesRequest**](../models/submit-user-roles-request) | True  | 

### Return type
[**SubmitUserRoles200Response**](../models/submit-user-roles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserRoles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserRolesRequest = @""@

# Create new user role pairings

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserRolesRequest -Json $SubmitUserRolesRequest
    Submit-NERMUserRoles -SubmitUserRolesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUserRoles -SubmitUserRolesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUserRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
