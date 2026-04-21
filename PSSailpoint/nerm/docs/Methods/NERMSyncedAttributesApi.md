---
id: nerm-synced-attributes
title: SyncedAttributes
pagination_label: SyncedAttributes
sidebar_label: SyncedAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SyncedAttributes', 'NERMSyncedAttributes'] 
slug: /tools/sdk/powershell/nerm/methods/synced-attributes
tags: ['SDK', 'Software Development Kit', 'SyncedAttributes', 'NERMSyncedAttributes']
---

# SyncedAttributes
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMSyncedAttribute**](#create-synced-attribute) | **POST** `/profile_types/{profile_type_id}/synced_attributes` | Create a synced attribute
[**Remove-NERMSyncedAttribute**](#delete-synced-attribute) | **DELETE** `/profile_types/{profile_type_id}/synced_attributes/{ne_attribute_id}` | Delete synced attribute
[**Get-NERMProfileTypeAttributes**](#get-profile-type-attributes) | **GET** `/profile_types/{profile_type_id}/ne_attributes` | profile_types/ne_attributes synced status


## create-synced-attribute
Create synced attribute

[API Spec](https://developer.sailpoint.com/docs/api//create-synced-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SyncedAttribute1 | [**SyncedAttribute1**](../models/synced-attribute1) | True  | 

### Return type
[**CreateSyncedAttribute201Response**](../models/create-synced-attribute201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Expected response to a valid request | CreateSyncedAttribute201Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SyncedAttribute1 = @"Object"@

# Create a synced attribute

try {
    $Result = ConvertFrom-NERMJsonToSyncedAttribute1 -Json $SyncedAttribute1
    New-NERMSyncedAttribute -SyncedAttribute1 $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMSyncedAttribute -SyncedAttribute1 $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMSyncedAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-synced-attribute
Delete a synced attribute.

[API Spec](https://developer.sailpoint.com/docs/api//delete-synced-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | ProfileTypeId | **String** |   (optional) | Profile Type ID for filtering
  Query | NeAttributeId | **String** |   (optional) | ID of an attribute for filtering

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
$ProfileTypeId = "79ed1cb6-9977-4965-9bfe-f2bcc242523e" # String | Profile Type ID for filtering (optional)
$NeAttributeId = "33f072dd-13b4-41e1-8ea0-16f2a59b57c8" # String | ID of an attribute for filtering (optional)

# Delete synced attribute

try {
    Remove-NERMSyncedAttribute 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMSyncedAttribute -ProfileTypeId $ProfileTypeId -NeAttributeId $NeAttributeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMSyncedAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profile-type-attributes
Get ne attributes and synced attribute relationship to profile type.

[API Spec](https://developer.sailpoint.com/docs/api//get-profile-type-attributes)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | ProfileTypeId | **String** |   (optional) | Profile Type ID for filtering
  Query | ActiveFilter | **String** |   (optional) | Filter for profile type synced attributes
  Query | Search | **String** |   (optional) | Filter by string
  Query | Page | **Int32** |   (optional) | Pagination items per page
  Query | Sort | [**GetProfileTypeAttributesSortParameter**](../models/get-profile-type-attributes-sort-parameter) |   (optional) | How records should be sorted

### Return type
[**GetProfileTypeAttributes200Response**](../models/get-profile-type-attributes200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetProfileTypeAttributes200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$ProfileTypeId = "79ed1cb6-9977-4965-9bfe-f2bcc242523e" # String | Profile Type ID for filtering (optional)
$ActiveFilter = "synced" # String | Filter for profile type synced attributes (optional)
$Search = "search" # String | Filter by string (optional)
$Page = 5 # Int32 | Pagination items per page (optional)
$Sort = @""@

# profile_types/ne_attributes synced status

try {
    Get-NERMProfileTypeAttributes 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfileTypeAttributes -ProfileTypeId $ProfileTypeId -ActiveFilter $ActiveFilter -Search $Search -Page $Page -Sort $Sort  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfileTypeAttributes"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
