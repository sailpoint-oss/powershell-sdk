---
id: nerm-permissions
title: Permissions
pagination_label: Permissions
sidebar_label: Permissions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Permissions', 'NERMPermissions'] 
slug: /tools/sdk/powershell/nerm/methods/permissions
tags: ['SDK', 'Software Development Kit', 'Permissions', 'NERMPermissions']
---

# Permissions
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMPermission**](#create-permission) | **POST** `/permissions` | Create a permission


## create-permission
This endpoint can create permissions for Lifecycle, Consolidation, and Collaboration

[API Spec](https://developer.sailpoint.com/docs/api//create-permission)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreatePermissionRequest | [**CreatePermissionRequest**](../models/create-permission-request) | True  | 

### Return type
[**CreatePermission200Response**](../models/create-permission200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreatePermission200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreatePermissionRequest = @""@

# Create a permission

try {
    $Result = ConvertFrom-NERMJsonToCreatePermissionRequest -Json $CreatePermissionRequest
    New-NERMPermission -CreatePermissionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMPermission -CreatePermissionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMPermission"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
