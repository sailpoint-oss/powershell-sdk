---
id: nerm-roles
title: Roles
pagination_label: Roles
sidebar_label: Roles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Roles', 'NERMRoles'] 
slug: /tools/sdk/powershell/nerm/methods/roles
tags: ['SDK', 'Software Development Kit', 'Roles', 'NERMRoles']
---

# Roles
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMRole**](#get-role) | **GET** `/roles/{id}` | Find role by id
[**Get-NERMRoles**](#get-roles) | **GET** `/roles` | Get roles
[**Update-NERMRole**](#patch-role) | **PATCH** `/roles/{id}` | Update an existing role
[**Update-NERMRoles**](#patch-roles) | **PATCH** `/roles` | Update multiple roles
[**Submit-NERMRole**](#submit-role) | **POST** `/role` | Create a new role
[**Submit-NERMRoles**](#submit-roles) | **POST** `/roles` | Create multiple new roles


## get-role
Info for a specific user role

[API Spec](https://developer.sailpoint.com/docs/api//get-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitRole200Response**](../models/submit-role200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRole200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find role by id

try {
    Get-NERMRole -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRole -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-roles
This endpoint can retrieve roles from NERM. Optionally you can provide parameters to filter results.

[API Spec](https://developer.sailpoint.com/docs/api//get-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").
  Query | Type | **String** |   (optional) | Filter roles by type.

### Return type
[**GetRoles200Response**](../models/get-roles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetRoles200Response
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
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)
$Type = "NeprofileRole" # String | Filter roles by type. (optional)

# Get roles

try {
    Get-NERMRoles 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRoles -Limit $Limit -Offset $Offset -Order $Order -Metadata $Metadata -Type $Type  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-role
Update an existing role

[API Spec](https://developer.sailpoint.com/docs/api//patch-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitRoleRequest | [**SubmitRoleRequest**](../models/submit-role-request) | True  | 

### Return type
[**SubmitRole200Response**](../models/submit-role200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRole200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitRoleRequest = @""@

# Update an existing role

try {
    $Result = ConvertFrom-NERMJsonToSubmitRoleRequest -Json $SubmitRoleRequest
    Update-NERMRole -Id $Id -SubmitRoleRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMRole -Id $Id -SubmitRoleRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-roles
Update multiple users

[API Spec](https://developer.sailpoint.com/docs/api//patch-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitRolesRequest | [**SubmitRolesRequest**](../models/submit-roles-request) | True  | 

### Return type
[**SubmitRoles200Response**](../models/submit-roles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRoles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitRolesRequest = @""@

# Update multiple roles

try {
    $Result = ConvertFrom-NERMJsonToSubmitRolesRequest -Json $SubmitRolesRequest
    Update-NERMRoles -SubmitRolesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMRoles -SubmitRolesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-role
Create a new role

[API Spec](https://developer.sailpoint.com/docs/api//submit-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitRoleRequest | [**SubmitRoleRequest**](../models/submit-role-request) | True  | 

### Return type
[**SubmitRole200Response**](../models/submit-role200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRole200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitRoleRequest = @""@

# Create a new role

try {
    $Result = ConvertFrom-NERMJsonToSubmitRoleRequest -Json $SubmitRoleRequest
    Submit-NERMRole -SubmitRoleRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMRole -SubmitRoleRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-roles
Create multiple new users

[API Spec](https://developer.sailpoint.com/docs/api//submit-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitRolesRequest | [**SubmitRolesRequest**](../models/submit-roles-request) | True  | 

### Return type
[**SubmitRoles200Response**](../models/submit-roles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRoles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitRolesRequest = @""@

# Create multiple new roles

try {
    $Result = ConvertFrom-NERMJsonToSubmitRolesRequest -Json $SubmitRolesRequest
    Submit-NERMRoles -SubmitRolesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMRoles -SubmitRolesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
