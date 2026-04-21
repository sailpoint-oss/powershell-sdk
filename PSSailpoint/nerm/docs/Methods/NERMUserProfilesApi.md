---
id: nerm-user-profiles
title: UserProfiles
pagination_label: UserProfiles
sidebar_label: UserProfiles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserProfiles', 'NERMUserProfiles'] 
slug: /tools/sdk/powershell/nerm/methods/user-profiles
tags: ['SDK', 'Software Development Kit', 'UserProfiles', 'NERMUserProfiles']
---

# UserProfiles
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMUserProfiles**](#create-user-profiles) | **POST** `/user_profiles` | Create multiple user-profile contributor relationships
[**Remove-NERMUserProfile**](#delete-user-profile) | **DELETE** `/user_profile/{id}` | Delete a user profile assignment
[**Remove-NERMUserProfiles**](#delete-user-profiles) | **DELETE** `/user_profiles` | Delete multiple user-profile contributor relationships
[**Get-NERMUserProfile**](#get-user-profile) | **GET** `/user_profiles/{id}` | Find user-profile contributor relationship
[**Get-NERMUserProfiles**](#get-user-profiles) | **GET** `/user_profiles` | Get user-profile contributor relationships
[**Update-NERMUserProfile**](#patch-user-profile) | **PATCH** `/user_profiles/{id}` | Update a user-profile contributor relationship
[**Update-NERMUserProfiles**](#patch-user-profiles) | **PATCH** `/user_profiles` | Update multiple user-profile contributor relationships
[**Submit-NERMUserProfile**](#submit-user-profile) | **POST** `/user_profile` | Create a user-profile contributor relationship


## create-user-profiles
Create multiple user-profile contributor relationships

[API Spec](https://developer.sailpoint.com/docs/api//create-user-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateUserProfilesRequest | [**CreateUserProfilesRequest**](../models/create-user-profiles-request) | True  | 

### Return type
[**CreateUserProfiles200Response**](../models/create-user-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateUserProfiles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateUserProfilesRequest = @""@

# Create multiple user-profile contributor relationships

try {
    $Result = ConvertFrom-NERMJsonToCreateUserProfilesRequest -Json $CreateUserProfilesRequest
    New-NERMUserProfiles -CreateUserProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMUserProfiles -CreateUserProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMUserProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-user-profile
Delete a user profile assignment

[API Spec](https://developer.sailpoint.com/docs/api//delete-user-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SystemCollectionsHashtable**](https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | User profile was destroyed | SystemCollectionsHashtable
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete a user profile assignment

try {
    Remove-NERMUserProfile -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMUserProfile -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMUserProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-user-profiles
Delete multiple user-profile contributor relationships

[API Spec](https://developer.sailpoint.com/docs/api//delete-user-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateUserProfilesRequest | [**CreateUserProfilesRequest**](../models/create-user-profiles-request) | True  | 

### Return type
[**CreateUserProfiles200Response**](../models/create-user-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateUserProfiles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateUserProfilesRequest = @""@

# Delete multiple user-profile contributor relationships

try {
    $Result = ConvertFrom-NERMJsonToCreateUserProfilesRequest -Json $CreateUserProfilesRequest
    Remove-NERMUserProfiles -CreateUserProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMUserProfiles -CreateUserProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMUserProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-user-profile
Find user-profile contributor relationship by id

[API Spec](https://developer.sailpoint.com/docs/api//get-user-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitUserProfile200Response**](../models/submit-user-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserProfile200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find user-profile contributor relationship

try {
    Get-NERMUserProfile -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUserProfile -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUserProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-user-profiles
Get user-profile contributor relationships

[API Spec](https://developer.sailpoint.com/docs/api//get-user-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | UserId | **String** |   (optional) | The ID of a user for filtering
  Query | NeAttributeId | **String** |   (optional) | ID of an attribute for filtering
  Query | ProfileId | **String** |   (optional) | Profile ID to filter by
  Query | RelationshipType | **String** |   (optional) | Type of user contributor relationship to filter by
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetUserProfiles200Response**](../models/get-user-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetUserProfiles200Response
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
$UserId = "bba9cfb2-96c1-4acb-ac79-a21732527265" # String | The ID of a user for filtering (optional)
$NeAttributeId = "33f072dd-13b4-41e1-8ea0-16f2a59b57c8" # String | ID of an attribute for filtering (optional)
$ProfileId = "4e480441-451d-47d9-87c2-9a0f0fe135eb" # String | Profile ID to filter by (optional)
$RelationshipType = "owner" # String | Type of user contributor relationship to filter by (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get user-profile contributor relationships

try {
    Get-NERMUserProfiles 
    
    # Below is a request that includes all optional parameters
    # Get-NERMUserProfiles -Limit $Limit -Offset $Offset -Order $Order -UserId $UserId -NeAttributeId $NeAttributeId -ProfileId $ProfileId -RelationshipType $RelationshipType -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMUserProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-user-profile
Update a user-profile contributor relationship by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-user-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitUserProfileRequest | [**SubmitUserProfileRequest**](../models/submit-user-profile-request) | True  | 

### Return type
[**SubmitUserProfile200Response**](../models/submit-user-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserProfile200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitUserProfileRequest = @""@

# Update a user-profile contributor relationship

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserProfileRequest -Json $SubmitUserProfileRequest
    Update-NERMUserProfile -Id $Id -SubmitUserProfileRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUserProfile -Id $Id -SubmitUserProfileRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUserProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-user-profiles
Update multiple user-profile contributor relationships

[API Spec](https://developer.sailpoint.com/docs/api//patch-user-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateUserProfilesRequest | [**CreateUserProfilesRequest**](../models/create-user-profiles-request) | True  | 

### Return type
[**CreateUserProfiles200Response**](../models/create-user-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateUserProfiles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateUserProfilesRequest = @""@

# Update multiple user-profile contributor relationships

try {
    $Result = ConvertFrom-NERMJsonToCreateUserProfilesRequest -Json $CreateUserProfilesRequest
    Update-NERMUserProfiles -CreateUserProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMUserProfiles -CreateUserProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMUserProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-user-profile
Create a user-profile contributor relationship

[API Spec](https://developer.sailpoint.com/docs/api//submit-user-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitUserProfileRequest | [**SubmitUserProfileRequest**](../models/submit-user-profile-request) | True  | 

### Return type
[**SubmitUserProfile200Response**](../models/submit-user-profile200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitUserProfile200Response
405 | Invalid input | 

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitUserProfileRequest = @""@

# Create a user-profile contributor relationship

try {
    $Result = ConvertFrom-NERMJsonToSubmitUserProfileRequest -Json $SubmitUserProfileRequest
    Submit-NERMUserProfile -SubmitUserProfileRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMUserProfile -SubmitUserProfileRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMUserProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
