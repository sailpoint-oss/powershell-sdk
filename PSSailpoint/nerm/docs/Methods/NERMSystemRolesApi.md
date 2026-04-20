---
id: nerm-system-roles
title: SystemRoles
pagination_label: SystemRoles
sidebar_label: SystemRoles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SystemRoles', 'NERMSystemRoles'] 
slug: /tools/sdk/powershell/nerm/methods/system-roles
tags: ['SDK', 'Software Development Kit', 'SystemRoles', 'NERMSystemRoles']
---

# SystemRoles
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMSystemRoles**](#get-system-roles) | **GET** `/system_roles` | Get system roles


## get-system-roles
This endpoint can retrieve system roles from NERM. Optionally you can provide parameters to filter results.

[API Spec](https://developer.sailpoint.com/docs/api//get-system-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetSystemRoles200Response**](../models/get-system-roles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetSystemRoles200Response
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

# Get system roles

try {
    Get-NERMSystemRoles 
    
    # Below is a request that includes all optional parameters
    # Get-NERMSystemRoles -Limit $Limit -Offset $Offset -Order $Order -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMSystemRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
