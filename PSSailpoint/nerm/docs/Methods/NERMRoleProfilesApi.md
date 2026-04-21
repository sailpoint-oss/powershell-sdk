---
id: nerm-role-profiles
title: RoleProfiles
pagination_label: RoleProfiles
sidebar_label: RoleProfiles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleProfiles', 'NERMRoleProfiles'] 
slug: /tools/sdk/powershell/nerm/methods/role-profiles
tags: ['SDK', 'Software Development Kit', 'RoleProfiles', 'NERMRoleProfiles']
---

# RoleProfiles
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-NERMRoleProfile**](#delete-role-profile) | **DELETE** `/role_profile/{id}` | Delete a role profile assignment
[**Get-NERMRoleProfile**](#get-role-profile) | **GET** `/role_profiles/{id}` | Find role-profile contributor relationship
[**Get-NERMRoleProfiles**](#get-role-profiles) | **GET** `/role_profiles` | Get role-profile contributor relationships
[**Update-NERMRoleProfile**](#patch-role-profile) | **PATCH** `/role_profiles/{id}` | Update a role-profile contributor relationship
[**Update-NERMRoleProfiles**](#patch-role-profiles) | **PATCH** `/role_profiles` | Update multiple role-profile contributor relationships
[**Submit-NERMRoleProfile**](#submit-role-profile) | **POST** `/role_profile` | Create a role-profile contributor relationship
[**Submit-NERMRoleProfiles**](#submit-role-profiles) | **POST** `/role_profiles` | Create multiple role-profile contributor relationships


## delete-role-profile
Delete a role profile assignment

[API Spec](https://developer.sailpoint.com/docs/api//delete-role-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SystemCollectionsHashtable**](https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Role profile was destroyed | SystemCollectionsHashtable
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete a role profile assignment

try {
    Remove-NERMRoleProfile -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMRoleProfile -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMRoleProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-role-profile
Find role-profile contributor relationship by id

[API Spec](https://developer.sailpoint.com/docs/api//get-role-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitRoleProfile200Response**](../models/submit-role-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRoleProfile200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find role-profile contributor relationship

try {
    Get-NERMRoleProfile -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRoleProfile -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRoleProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-role-profiles
Get role-profile contributor relationships

[API Spec](https://developer.sailpoint.com/docs/api//get-role-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | RoleId | **String** |   (optional) | The ID of a role for filtering
  Query | ProfileId | **String** |   (optional) | Profile ID to filter by
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetRoleProfiles200Response**](../models/get-role-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetRoleProfiles200Response
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
$RoleId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | The ID of a role for filtering (optional)
$ProfileId = "4e480441-451d-47d9-87c2-9a0f0fe135eb" # String | Profile ID to filter by (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get role-profile contributor relationships

try {
    Get-NERMRoleProfiles 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRoleProfiles -Limit $Limit -Offset $Offset -Order $Order -RoleId $RoleId -ProfileId $ProfileId -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRoleProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-role-profile
Update a role-profile contributor relationship by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-role-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitRoleProfileRequest | [**SubmitRoleProfileRequest**](../models/submit-role-profile-request) | True  | 

### Return type
[**SubmitRoleProfile200Response**](../models/submit-role-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRoleProfile200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitRoleProfileRequest = @""@

# Update a role-profile contributor relationship

try {
    $Result = ConvertFrom-NERMJsonToSubmitRoleProfileRequest -Json $SubmitRoleProfileRequest
    Update-NERMRoleProfile -Id $Id -SubmitRoleProfileRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMRoleProfile -Id $Id -SubmitRoleProfileRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMRoleProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-role-profiles
Update multiple role-profile contributor relationships

[API Spec](https://developer.sailpoint.com/docs/api//patch-role-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitRoleProfilesRequest | [**SubmitRoleProfilesRequest**](../models/submit-role-profiles-request) | True  | 

### Return type
[**SubmitRoleProfiles200Response**](../models/submit-role-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRoleProfiles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitRoleProfilesRequest = @""@

# Update multiple role-profile contributor relationships

try {
    $Result = ConvertFrom-NERMJsonToSubmitRoleProfilesRequest -Json $SubmitRoleProfilesRequest
    Update-NERMRoleProfiles -SubmitRoleProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMRoleProfiles -SubmitRoleProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMRoleProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-role-profile
Create a role-profile contributor relationship

[API Spec](https://developer.sailpoint.com/docs/api//submit-role-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitRoleProfileRequest | [**SubmitRoleProfileRequest**](../models/submit-role-profile-request) | True  | 

### Return type
[**SubmitRoleProfile200Response**](../models/submit-role-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRoleProfile200Response
405 | Invalid input | 

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitRoleProfileRequest = @""@

# Create a role-profile contributor relationship

try {
    $Result = ConvertFrom-NERMJsonToSubmitRoleProfileRequest -Json $SubmitRoleProfileRequest
    Submit-NERMRoleProfile -SubmitRoleProfileRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMRoleProfile -SubmitRoleProfileRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMRoleProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-role-profiles
Create multiple role-profile contributor relationships

[API Spec](https://developer.sailpoint.com/docs/api//submit-role-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitRoleProfilesRequest | [**SubmitRoleProfilesRequest**](../models/submit-role-profiles-request) | True  | 

### Return type
[**SubmitRoleProfiles200Response**](../models/submit-role-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitRoleProfiles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitRoleProfilesRequest = @""@

# Create multiple role-profile contributor relationships

try {
    $Result = ConvertFrom-NERMJsonToSubmitRoleProfilesRequest -Json $SubmitRoleProfilesRequest
    Submit-NERMRoleProfiles -SubmitRoleProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMRoleProfiles -SubmitRoleProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMRoleProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
