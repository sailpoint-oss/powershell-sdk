---
id: nerm-isc-accounts
title: IscAccounts
pagination_label: IscAccounts
sidebar_label: IscAccounts
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IscAccounts', 'NERMIscAccounts'] 
slug: /tools/sdk/powershell/nerm/methods/isc-accounts
tags: ['SDK', 'Software Development Kit', 'IscAccounts', 'NERMIscAccounts']
---

# IscAccounts
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMSchemaMappedProfilesCollection**](#get-schema-mapped-profiles-collection) | **GET** `/isc/accounts` | Get Profiles
[**Get-NERMSingleSchemaMappedProfile**](#get-single-schema-mapped-profile) | **GET** `/isc/accounts/{id}` | Get Profile
[**Update-NERMProfile**](#update-profile) | **PATCH** `/isc/accounts/{id}` | Update Profile


## get-schema-mapped-profiles-collection
Retrieve schema-mapped profiles collection. It returns a collection of stored profiles, optionally using schema-mapped field names if requested.

[API Spec](https://developer.sailpoint.com/docs/api//get-schema-mapped-profiles-collection)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | UseSchema | **Boolean** |   (optional) (default to $false) | The use_schema parameter returns schema-mapped field names in the Profiles API response when set to true.
  Query | OverrideSyncToggle | **Boolean** |   (optional) (default to $false) | The override_sync_toggle parameter returns all non-employee and assignment profiles regardless of the sync status when set to true.
  Query | Category | **String** |   (optional) | Filters profiles by profile type category
  Query | Status | **String** |   (optional) | The status of the profile. It can be multiple values with comma separated.

### Return type
[**GetSchemaMappedProfilesCollection200Response**](../models/get-schema-mapped-profiles-collection200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetSchemaMappedProfilesCollection200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Limit = 5 # Int32 | The maximum number of items to return. (optional)
$Offset = 5 # Int32 | The number of items to skip before starting to collect the result set. (optional)
$UseSchema = $true # Boolean | The use_schema parameter returns schema-mapped field names in the Profiles API response when set to true. (optional) (default to $false)
$OverrideSyncToggle = $true # Boolean | The override_sync_toggle parameter returns all non-employee and assignment profiles regardless of the sync status when set to true. (optional) (default to $false)
$Category = "non-employee" # String | Filters profiles by profile type category (optional)
$Status = "active" # String | The status of the profile. It can be multiple values with comma separated. (optional)

# Get Profiles

try {
    Get-NERMSchemaMappedProfilesCollection 
    
    # Below is a request that includes all optional parameters
    # Get-NERMSchemaMappedProfilesCollection -Limit $Limit -Offset $Offset -UseSchema $UseSchema -OverrideSyncToggle $OverrideSyncToggle -Category $Category -Status $Status  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMSchemaMappedProfilesCollection"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-single-schema-mapped-profile
It returns a single stored profile, optionally with schema-mapped field names.

[API Spec](https://developer.sailpoint.com/docs/api//get-single-schema-mapped-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetSingleSchemaMappedProfile200Response**](../models/get-single-schema-mapped-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetSingleSchemaMappedProfile200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Get Profile

try {
    Get-NERMSingleSchemaMappedProfile -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMSingleSchemaMappedProfile -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMSingleSchemaMappedProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-profile
Updates a profile only through ISC schema-mapped attributes, performs a reverse mapping to match the NERM attributes to update.

[API Spec](https://developer.sailpoint.com/docs/api//update-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | UpdateProfileRequest | [**UpdateProfileRequest**](../models/update-profile-request) |   (optional) | 

### Return type
[**GetSingleSchemaMappedProfile200Response**](../models/get-single-schema-mapped-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetSingleSchemaMappedProfile200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$UpdateProfileRequest = @""@

# Update Profile

try {
    Update-NERMProfile -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Update-NERMProfile -Id $Id -UpdateProfileRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
