---
id: nerm-profile-type-roles
title: ProfileTypeRoles
pagination_label: ProfileTypeRoles
sidebar_label: ProfileTypeRoles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeRoles', 'NERMProfileTypeRoles'] 
slug: /tools/sdk/powershell/nerm/methods/profile-type-roles
tags: ['SDK', 'Software Development Kit', 'ProfileTypeRoles', 'NERMProfileTypeRoles']
---

# ProfileTypeRoles
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMProfileTypeRole**](#create-profile-type-role) | **POST** `/profile_type_roles` | Create a profile type role


## create-profile-type-role
This endpoint can create a profile type role. NOTE- The ability to toggle Allow/Block is done through the Profile Type

[API Spec](https://developer.sailpoint.com/docs/api//create-profile-type-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateProfileTypeRoleRequest | [**CreateProfileTypeRoleRequest**](../models/create-profile-type-role-request) | True  | 

### Return type
[**CreateProfileTypeRole200Response**](../models/create-profile-type-role200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateProfileTypeRole200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateProfileTypeRoleRequest = @""@

# Create a profile type role

try {
    $Result = ConvertFrom-NERMJsonToCreateProfileTypeRoleRequest -Json $CreateProfileTypeRoleRequest
    New-NERMProfileTypeRole -CreateProfileTypeRoleRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMProfileTypeRole -CreateProfileTypeRoleRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMProfileTypeRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
