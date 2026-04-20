---
id: nerm-profiles
title: Profiles
pagination_label: Profiles
sidebar_label: Profiles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Profiles', 'NERMProfiles'] 
slug: /tools/sdk/powershell/nerm/methods/profiles
tags: ['SDK', 'Software Development Kit', 'Profiles', 'NERMProfiles']
---

# Profiles
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMProfiles**](#create-profiles) | **POST** `/profiles` | Create multiple profiles
[**Remove-NERMProfileById**](#delete-profile-by-id) | **DELETE** `/profiles/{id}` | Delete a single profile
[**Remove-NERMProfiles**](#delete-profiles) | **DELETE** `/profiles` | Delete multiple profiles
[**Get-NERMProfileAvatar**](#get-profile-avatar) | **GET** `/profiles/{id}/avatar` | Retrieves profile avatar URL
[**Get-NERMProfileById**](#get-profile-by-id) | **GET** `/profiles/{id}` | Find profile by id
[**Get-NERMProfileUpload**](#get-profile-upload) | **GET** `/profiles/{id}/upload/{attribute_id}` | Retrieves profile attribute attachment URL
[**Get-NERMProfiles**](#get-profiles) | **GET** `/profiles` | Get profiles
[**Update-NERMProfileById**](#patch-profile-by-id) | **PATCH** `/profiles/{id}` | Update a profile by id
[**Update-NERMProfiles**](#patch-profiles) | **PATCH** `/profiles` | Update multiple profiles
[**Submit-NERMProfile**](#submit-profile) | **POST** `/profile` | Create a profile
[**Submit-NERMProfileAvatar**](#submit-profile-avatar) | **POST** `/profiles/{id}/avatar` | Uploads new profile avatar
[**Submit-NERMProfileUpload**](#submit-profile-upload) | **POST** `/profiles/{id}/upload/{attribute_id}` | Uploads profile attachment attribute


## create-profiles
Create multiple profiles

[API Spec](https://developer.sailpoint.com/docs/api//create-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateProfilesRequest | [**CreateProfilesRequest**](../models/create-profiles-request) | True  | 

### Return type
[**SearchAdvancedSearch200Response**](../models/search-advanced-search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SearchAdvancedSearch200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateProfilesRequest = @""@

# Create multiple profiles

try {
    $Result = ConvertFrom-NERMJsonToCreateProfilesRequest -Json $CreateProfilesRequest
    New-NERMProfiles -CreateProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMProfiles -CreateProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-profile-by-id
Delete a single profile

[API Spec](https://developer.sailpoint.com/docs/api//delete-profile-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | The Profile was successfully deleted. | 
400 | Error deleting Profile | DeleteMasterRecord400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete a single profile

try {
    Remove-NERMProfileById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMProfileById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMProfileById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-profiles
Delete multiple profiles

[API Spec](https://developer.sailpoint.com/docs/api//delete-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateProfilesRequest | [**CreateProfilesRequest**](../models/create-profiles-request) | True  | 

### Return type
[**DeleteProfiles200Response**](../models/delete-profiles200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | DeleteProfiles200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateProfilesRequest = @""@

# Delete multiple profiles

try {
    $Result = ConvertFrom-NERMJsonToCreateProfilesRequest -Json $CreateProfilesRequest
    Remove-NERMProfiles -CreateProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMProfiles -CreateProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profile-avatar
Retrieves the URL of the profile avatar

[API Spec](https://developer.sailpoint.com/docs/api//get-profile-avatar)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**Url**](../models/url)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | Url
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Retrieves profile avatar URL

try {
    Get-NERMProfileAvatar -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfileAvatar -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfileAvatar"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profile-by-id
Find profile by id

[API Spec](https://developer.sailpoint.com/docs/api//get-profile-by-id)

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

# Find profile by id

try {
    Get-NERMProfileById -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfileById -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfileById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profile-upload
Retrieves the URL of an attachment attribute value from a profile

[API Spec](https://developer.sailpoint.com/docs/api//get-profile-upload)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
Path   | AttributeId | **String** | True  | The id of the attachment attribute

### Return type
[**Url**](../models/url)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | Url
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$AttributeId = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | The id of the attachment attribute

# Retrieves profile attribute attachment URL

try {
    Get-NERMProfileUpload -Id $Id -AttributeId $AttributeId 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfileUpload -Id $Id -AttributeId $AttributeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfileUpload"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-profiles
Get profiles

[API Spec](https://developer.sailpoint.com/docs/api//get-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | ExcludeAttributes | **Boolean** |   (optional) (default to $false) | Allows for optimization by not returning the associated attribute data for the returned profiles
  Query | Name | **String** |   (optional) | object name for filtering
  Query | ProfileTypeId | **String** |   (optional) | Profile Type ID for filtering
  Query | Status | **String** |   (optional) | status value for filtering
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").
  Query | AfterId | **String** |   (optional) | Represents the ID where the query should begin from. If blank, it represents the first ID. When used, forces sorting by ID ascending and does not allow use of `offset`. When `after_id` is specified it changes the mode of the API such that any filter parameters other than `profile_type_id`, `limit`, and `offset` are not supported and will be either silently ignored or result in an HTTP 400 error. For example you can not include an `after_id` along with an `archived=false` in the same request. Can be used alongside `metadata` parameter.
  Query | UpdatedAfter | **System.DateTime** |   (optional) | Adds support for filtering profiles based on the date of the latest modification made on them. Can be used alongside the after_id parameter.

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
$Order = "created_at" # String | The field to order results by. (optional)
$ExcludeAttributes = $false # Boolean | Allows for optimization by not returning the associated attribute data for the returned profiles (optional) (default to $false)
$Name = "name" # String | object name for filtering (optional)
$ProfileTypeId = "79ed1cb6-9977-4965-9bfe-f2bcc242523e" # String | Profile Type ID for filtering (optional)
$Status = "Active" # String | status value for filtering (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)
$AfterId = "4eaa719f-4312-4c5b-9264-d0eb04d4a02a" # String | Represents the ID where the query should begin from. If blank, it represents the first ID. When used, forces sorting by ID ascending and does not allow use of `offset`. When `after_id` is specified it changes the mode of the API such that any filter parameters other than `profile_type_id`, `limit`, and `offset` are not supported and will be either silently ignored or result in an HTTP 400 error. For example you can not include an `after_id` along with an `archived=false` in the same request. Can be used alongside `metadata` parameter. (optional)
$UpdatedAfter = (Get-Date) # System.DateTime | Adds support for filtering profiles based on the date of the latest modification made on them. Can be used alongside the after_id parameter. (optional)

# Get profiles

try {
    Get-NERMProfiles 
    
    # Below is a request that includes all optional parameters
    # Get-NERMProfiles -Limit $Limit -Offset $Offset -Order $Order -ExcludeAttributes $ExcludeAttributes -Name $Name -ProfileTypeId $ProfileTypeId -Status $Status -Metadata $Metadata -AfterId $AfterId -UpdatedAfter $UpdatedAfter  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-profile-by-id
Update a profile by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-profile-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitProfileRequest | [**SubmitProfileRequest**](../models/submit-profile-request) | True  | 

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
$SubmitProfileRequest = @""@

# Update a profile by id

try {
    $Result = ConvertFrom-NERMJsonToSubmitProfileRequest -Json $SubmitProfileRequest
    Update-NERMProfileById -Id $Id -SubmitProfileRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMProfileById -Id $Id -SubmitProfileRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMProfileById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-profiles
Update multiple profiles

[API Spec](https://developer.sailpoint.com/docs/api//patch-profiles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateProfilesRequest | [**CreateProfilesRequest**](../models/create-profiles-request) | True  | 

### Return type
[**SearchAdvancedSearch200Response**](../models/search-advanced-search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SearchAdvancedSearch200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateProfilesRequest = @""@

# Update multiple profiles

try {
    $Result = ConvertFrom-NERMJsonToCreateProfilesRequest -Json $CreateProfilesRequest
    Update-NERMProfiles -CreateProfilesRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMProfiles -CreateProfilesRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMProfiles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-profile
Create a profile

[API Spec](https://developer.sailpoint.com/docs/api//submit-profile)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitProfileRequest | [**SubmitProfileRequest**](../models/submit-profile-request) | True  | 

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
$SubmitProfileRequest = @""@

# Create a profile

try {
    $Result = ConvertFrom-NERMJsonToSubmitProfileRequest -Json $SubmitProfileRequest
    Submit-NERMProfile -SubmitProfileRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMProfile -SubmitProfileRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMProfile"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-profile-avatar
Uploads a new profile avatar

[API Spec](https://developer.sailpoint.com/docs/api//submit-profile-avatar)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
   | File | **System.IO.FileInfo** |   (optional) | 

### Return type
[**Url**](../models/url)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | Url
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: multipart/form-data
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$File =  # System.IO.FileInfo |  (optional)

# Uploads new profile avatar

try {
    Submit-NERMProfileAvatar -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMProfileAvatar -Id $Id -File $File  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMProfileAvatar"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-profile-upload
Uploads a new attachment attribute value to a profile. The upload must be a FORM data type; this is not a JSON API. The upload must include the binary content of the payload under the 'file' named form element. The upload must not attempt to include the file name or its content type as a other form or JSON as parameters. The upload must not attempt to upload the file body as the POST body payload; it has to arrive as a FORM parameter. Do not use a `File/Binary` payload type for the POST operation in your API client.


[API Spec](https://developer.sailpoint.com/docs/api//submit-profile-upload)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
Path   | AttributeId | **String** | True  | The id of the attachment attribute
   | File | **System.IO.FileInfo** |   (optional) | 

### Return type
[**Url**](../models/url)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | Url
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: multipart/form-data
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$AttributeId = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | The id of the attachment attribute
$File =  # System.IO.FileInfo |  (optional)

# Uploads profile attachment attribute

try {
    Submit-NERMProfileUpload -Id $Id -AttributeId $AttributeId 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMProfileUpload -Id $Id -AttributeId $AttributeId -File $File  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMProfileUpload"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
