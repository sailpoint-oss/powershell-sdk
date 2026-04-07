---
id: v2026-machine-account-subtypes
title: MachineAccountSubtypes
pagination_label: MachineAccountSubtypes
sidebar_label: MachineAccountSubtypes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubtypes', 'V2026MachineAccountSubtypes'] 
slug: /tools/sdk/powershell/v2026/methods/machine-account-subtypes
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubtypes', 'V2026MachineAccountSubtypes']
---

# MachineAccountSubtypes
  Use this API to get, update, and delete machine account subtype for sources.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-V2026MachineAccountSubtype**](#delete-machine-account-subtype) | **DELETE** `/source-subtypes/{subtypeId}` | Delete subtype by ID
[**Get-V2026SourceSubtypeById**](#get-source-subtype-by-id) | **GET** `/source-subtypes/{subtypeId}` | Get subtype by ID
[**Update-V2026MachineAccountSubtype**](#patch-machine-account-subtype) | **PATCH** `/source-subtypes/{subtypeId}` | Patch subtype by ID


## delete-machine-account-subtype
Delete a machine account subtype by subtype ID.

Note: If subtype has approval settings or entitlement for machine account creation enablement then it'll be also deleted.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/delete-machine-account-subtype)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SubtypeId | **String** | True  | The ID of the subtype.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | Subtype deleted successfully. | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "6d28b7c1-620c-49c6-b6d5-cbf81eb4b5fa" # String | The ID of the subtype.

# Delete subtype by ID

try {
    Remove-V2026MachineAccountSubtype -SubtypeId $SubtypeId 
    
    # Below is a request that includes all optional parameters
    # Remove-V2026MachineAccountSubtype -SubtypeId $SubtypeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2026MachineAccountSubtype"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-source-subtype-by-id
Get a machine account subtype by subtype ID.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-source-subtype-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SubtypeId | **String** | True  | The ID of the subtype.

### Return type
[**SourceSubtypeWithSource**](../models/source-subtype-with-source)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine account subtype object. | SourceSubtypeWithSource
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "6d28b7c1-620c-49c6-b6d5-cbf81eb4b5fa" # String | The ID of the subtype.

# Get subtype by ID

try {
    Get-V2026SourceSubtypeById -SubtypeId $SubtypeId 
    
    # Below is a request that includes all optional parameters
    # Get-V2026SourceSubtypeById -SubtypeId $SubtypeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026SourceSubtypeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-machine-account-subtype
Update fields of a machine account subtype by subtype ID.
Patchable fields only include: `displayName`, `description`.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/patch-machine-account-subtype)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SubtypeId | **String** | True  | The ID of the subtype.
 Body  | RequestBody | [**[]SystemCollectionsHashtable**](https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0) | True  | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Return type
[**SourceSubtypeWithSource**](../models/source-subtype-with-source)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated machine account subtype. | SourceSubtypeWithSource
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "6d28b7c1-620c-49c6-b6d5-cbf81eb4b5fa" # String | The ID of the subtype.
$RequestBody =  # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 $RequestBody = @"[{op=replace, path=/displayName, value=Test New DisplayName}]"@ # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 

# Patch subtype by ID

try {
    $Result = ConvertFrom-V2026JsonToRequestBody -Json $RequestBody
    Update-V2026MachineAccountSubtype -SubtypeId $SubtypeId -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026MachineAccountSubtype -SubtypeId $SubtypeId -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026MachineAccountSubtype"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
