---
id: machine-account-subtypes
title: MachineAccountSubtypes
pagination_label: MachineAccountSubtypes
sidebar_label: MachineAccountSubtypes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountSubtypes', 'MachineAccountSubtypes'] 
slug: /tools/sdk/powershell/machineaccountsubtypesv1/methods/machine-account-subtypes
tags: ['SDK', 'Software Development Kit', 'MachineAccountSubtypes', 'MachineAccountSubtypes']
---

# MachineAccountSubtypes
  Use this API to get, update, and delete machine account subtype for sources.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-MachineAccountSubtypeV1**](#delete-machine-account-subtype-v1) | **DELETE** `/source-subtypes/v1/{subtypeId}` | Delete subtype by ID
[**Get-SourceSubtypeByIdV1**](#get-source-subtype-by-id-v1) | **GET** `/source-subtypes/v1/{subtypeId}` | Get subtype by ID
[**Update-MachineAccountSubtypeV1**](#patch-machine-account-subtype-v1) | **PATCH** `/source-subtypes/v1/{subtypeId}` | Patch subtype by ID


## delete-machine-account-subtype-v1
Delete a machine account subtype by subtype ID.

Note: If subtype has approval settings or entitlement for machine account creation enablement then it'll be also deleted.

[API Spec](https://developer.sailpoint.com/docs/api/v1/delete-machine-account-subtype-v1)

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
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetSourceSubtypeByIdV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetSourceSubtypeByIdV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "6d28b7c1-620c-49c6-b6d5-cbf81eb4b5fa" # String | The ID of the subtype.

# Delete subtype by ID

try {
    Remove-MachineAccountSubtypeV1 -SubtypeId $SubtypeId 
    
    # Below is a request that includes all optional parameters
    # Remove-MachineAccountSubtypeV1 -SubtypeId $SubtypeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-MachineAccountSubtypeV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-source-subtype-by-id-v1
Get a machine account subtype by subtype ID.

[API Spec](https://developer.sailpoint.com/docs/api/v1/get-source-subtype-by-id-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SubtypeId | **String** | True  | The ID of the subtype.

### Return type
[**Sourcesubtypewithsource**](../models/sourcesubtypewithsource)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine account subtype object. | Sourcesubtypewithsource
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetSourceSubtypeByIdV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetSourceSubtypeByIdV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "6d28b7c1-620c-49c6-b6d5-cbf81eb4b5fa" # String | The ID of the subtype.

# Get subtype by ID

try {
    Get-SourceSubtypeByIdV1 -SubtypeId $SubtypeId 
    
    # Below is a request that includes all optional parameters
    # Get-SourceSubtypeByIdV1 -SubtypeId $SubtypeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-SourceSubtypeByIdV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-machine-account-subtype-v1
Update fields of a machine account subtype by subtype ID.
Patchable fields only include: `displayName`, `description`.

[API Spec](https://developer.sailpoint.com/docs/api/v1/patch-machine-account-subtype-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SubtypeId | **String** | True  | The ID of the subtype.
 Body  | RequestBody | [**[]SystemCollectionsHashtable**](../models/system-collections-hashtable) | True  | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Return type
[**Sourcesubtypewithsource**](../models/sourcesubtypewithsource)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated machine account subtype. | Sourcesubtypewithsource
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetSourceSubtypeByIdV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetSourceSubtypeByIdV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "6d28b7c1-620c-49c6-b6d5-cbf81eb4b5fa" # String | The ID of the subtype.
$RequestBody =  # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 $RequestBody = @"[{"op":"replace","path":"/displayName","value":"Test New DisplayName"}]"@ # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 

# Patch subtype by ID

try {
    $Result = ConvertFrom-JsonToRequestBody -Json $RequestBody
    Update-MachineAccountSubtypeV1 -SubtypeId $SubtypeId -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Update-MachineAccountSubtypeV1 -SubtypeId $SubtypeId -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-MachineAccountSubtypeV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
