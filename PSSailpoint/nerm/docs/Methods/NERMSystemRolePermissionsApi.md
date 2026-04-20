---
id: nerm-system-role-permissions
title: SystemRolePermissions
pagination_label: SystemRolePermissions
sidebar_label: SystemRolePermissions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SystemRolePermissions', 'NERMSystemRolePermissions'] 
slug: /tools/sdk/powershell/nerm/methods/system-role-permissions
tags: ['SDK', 'Software Development Kit', 'SystemRolePermissions', 'NERMSystemRolePermissions']
---

# SystemRolePermissions
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMSystemRolePermission**](#create-system-role-permission) | **POST** `/system_role_permissions` | Create a system role permission


## create-system-role-permission
This endpoint can create system role permissions for Lifecycle System Roles

[API Spec](https://developer.sailpoint.com/docs/api//create-system-role-permission)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateSystemRolePermissionRequest | [**CreateSystemRolePermissionRequest**](../models/create-system-role-permission-request) | True  | 

### Return type
[**CreateSystemRolePermission200Response**](../models/create-system-role-permission200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateSystemRolePermission200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateSystemRolePermissionRequest = @""@

# Create a system role permission

try {
    $Result = ConvertFrom-NERMJsonToCreateSystemRolePermissionRequest -Json $CreateSystemRolePermissionRequest
    New-NERMSystemRolePermission -CreateSystemRolePermissionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMSystemRolePermission -CreateSystemRolePermissionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMSystemRolePermission"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
