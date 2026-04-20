---
id: nerm-advanced-search
title: AdvancedSearch
pagination_label: AdvancedSearch
sidebar_label: AdvancedSearch
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AdvancedSearch', 'NERMAdvancedSearch'] 
slug: /tools/sdk/powershell/nerm/methods/advanced-search
tags: ['SDK', 'Software Development Kit', 'AdvancedSearch', 'NERMAdvancedSearch']
---

# AdvancedSearch
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMAdvancedSearch**](#get-advanced-search) | **GET** `/advanced_search` | Get saved advanced search queries
[**Update-NERMAdvancedSearch**](#patch-advanced-search) | **PATCH** `/advanced_search/{id}` | Update a saved advanced search
[**Search-NERMAdvancedSearch**](#search-advanced-search) | **POST** `/advanced_search/run` | Run profiles advanced search
[**Search-NERMAdvancedSearchbyID**](#search-advanced-searchby-id) | **GET** `/advanced_search/{id}/run` | Run a saved advanced search
[**Submit-NERMAdvancedSearch**](#submit-advanced-search) | **POST** `/advanced_search` | Save an advanced search query


## get-advanced-search
Get saved advanced search queries

[API Spec](https://developer.sailpoint.com/docs/api//get-advanced-search)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**GetAdvancedSearch200Response**](../models/get-advanced-search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetAdvancedSearch200Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get saved advanced search queries

try {
    Get-NERMAdvancedSearch 
    
    # Below is a request that includes all optional parameters
    # Get-NERMAdvancedSearch  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMAdvancedSearch"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-advanced-search
Update a saved advanced search query

[API Spec](https://developer.sailpoint.com/docs/api//patch-advanced-search)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitAdvancedSearchRequest | [**SubmitAdvancedSearchRequest**](../models/submit-advanced-search-request) | True  | 

### Return type
[**SubmitAdvancedSearch200Response**](../models/submit-advanced-search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAdvancedSearch200Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitAdvancedSearchRequest = @""@

# Update a saved advanced search

try {
    $Result = ConvertFrom-NERMJsonToSubmitAdvancedSearchRequest -Json $SubmitAdvancedSearchRequest
    Update-NERMAdvancedSearch -Id $Id -SubmitAdvancedSearchRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMAdvancedSearch -Id $Id -SubmitAdvancedSearchRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMAdvancedSearch"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## search-advanced-search
Run an advanced search for profiles, without saving the query

[API Spec](https://developer.sailpoint.com/docs/api//search-advanced-search)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitAdvancedSearchRequest | [**SubmitAdvancedSearchRequest**](../models/submit-advanced-search-request) | True  | 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.

### Return type
[**SearchAdvancedSearch200Response**](../models/search-advanced-search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SearchAdvancedSearch200Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitAdvancedSearchRequest = @""@
$Limit = 5 # Int32 | The maximum number of items to return. (optional)
$Offset = 5 # Int32 | The number of items to skip before starting to collect the result set. (optional)
$Order = "created_at" # String | The field to order results by. (optional)

# Run profiles advanced search

try {
    $Result = ConvertFrom-NERMJsonToSubmitAdvancedSearchRequest -Json $SubmitAdvancedSearchRequest
    Search-NERMAdvancedSearch -SubmitAdvancedSearchRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Search-NERMAdvancedSearch -SubmitAdvancedSearchRequest $Result -Limit $Limit -Offset $Offset -Order $Order  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Search-NERMAdvancedSearch"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## search-advanced-searchby-id
Run a saved advanced search query

[API Spec](https://developer.sailpoint.com/docs/api//search-advanced-searchby-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.

### Return type
[**SearchAdvancedSearch200Response**](../models/search-advanced-search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SearchAdvancedSearch200Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$Limit = 5 # Int32 | The maximum number of items to return. (optional)
$Offset = 5 # Int32 | The number of items to skip before starting to collect the result set. (optional)
$Order = "created_at" # String | The field to order results by. (optional)

# Run a saved advanced search

try {
    Search-NERMAdvancedSearchbyID -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Search-NERMAdvancedSearchbyID -Id $Id -Limit $Limit -Offset $Offset -Order $Order  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Search-NERMAdvancedSearchbyID"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-advanced-search
Save an advanced search query for later use

[API Spec](https://developer.sailpoint.com/docs/api//submit-advanced-search)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitAdvancedSearchRequest | [**SubmitAdvancedSearchRequest**](../models/submit-advanced-search-request) | True  | 

### Return type
[**SubmitAdvancedSearch200Response**](../models/submit-advanced-search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitAdvancedSearch200Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitAdvancedSearchRequest = @""@

# Save an advanced search query

try {
    $Result = ConvertFrom-NERMJsonToSubmitAdvancedSearchRequest -Json $SubmitAdvancedSearchRequest
    Submit-NERMAdvancedSearch -SubmitAdvancedSearchRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMAdvancedSearch -SubmitAdvancedSearchRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMAdvancedSearch"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
