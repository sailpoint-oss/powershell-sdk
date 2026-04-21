---
id: nerm-delegations
title: Delegations
pagination_label: Delegations
sidebar_label: Delegations
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Delegations', 'NERMDelegations'] 
slug: /tools/sdk/powershell/nerm/methods/delegations
tags: ['SDK', 'Software Development Kit', 'Delegations', 'NERMDelegations']
---

# Delegations
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-NERMDelegationsGet**](#delegations-get) | **GET** `/delegations` | List delegations
[**Invoke-NERMDelegationsIdDelete**](#delegations-id-delete) | **DELETE** `/delegations/{id}` | Delete a delegation
[**Invoke-NERMDelegationsIdGet**](#delegations-id-get) | **GET** `/delegations/{id}` | Get a single delegation
[**Invoke-NERMDelegationsIdPatch**](#delegations-id-patch) | **PATCH** `/delegations/{id}` | Update a delegation
[**Invoke-NERMDelegationsPost**](#delegations-post) | **POST** `/delegations` | Create a delegation


## delegations-get
Returns a list of delegation records, optionally filtered by delegate, delegator, or expiration status.

[API Spec](https://developer.sailpoint.com/docs/api//delegations-get)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | DelegateId | **String** |   (optional) (default to "false") | Filter by delegate ID
  Query | DelegatorId | **String** |   (optional) (default to "false") | Filter by delegator ID
  Query | Expired | **Boolean** |   (optional) (default to $false) | Filter by expiration status (true for expired, false for not expired)
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.

### Return type
[**DelegationsGet200Response**](../models/delegations-get200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | DelegationsGet200Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$DelegateId = "ac4aae0b-4140-49a4-a84c-126762fd0c8f" # String | Filter by delegate ID (optional) (default to "false")
$DelegatorId = "ac4aae0b-4140-49a4-a84c-126762fd0c8f" # String | Filter by delegator ID (optional) (default to "false")
$Expired = $true # Boolean | Filter by expiration status (true for expired, false for not expired) (optional) (default to $false)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)
$Limit = 5 # Int32 | The maximum number of items to return. (optional)
$Offset = 5 # Int32 | The number of items to skip before starting to collect the result set. (optional)

# List delegations

try {
    Invoke-NERMDelegationsGet 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMDelegationsGet -DelegateId $DelegateId -DelegatorId $DelegatorId -Expired $Expired -Metadata $Metadata -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMDelegationsGet"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delegations-id-delete
Delete an existing delegation record.

[API Spec](https://developer.sailpoint.com/docs/api//delegations-id-delete)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The delegation record &#39;&lt;delegation_id&gt;&#39; has been destroyed. | 
404 | Record Not Found | DelegationsPost404Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete a delegation

try {
    Invoke-NERMDelegationsIdDelete -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMDelegationsIdDelete -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMDelegationsIdDelete"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delegations-id-get
Returns a single delegation record by its ID.

[API Spec](https://developer.sailpoint.com/docs/api//delegations-id-get)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**DelegationsPost201Response**](../models/delegations-post201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | DelegationsPost201Response
404 | Record Not Found | DelegationsPost404Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Get a single delegation

try {
    Invoke-NERMDelegationsIdGet -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMDelegationsIdGet -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMDelegationsIdGet"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delegations-id-patch
Update an existing delegation record.

[API Spec](https://developer.sailpoint.com/docs/api//delegations-id-patch)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | DelegationsPostRequest | [**DelegationsPostRequest**](../models/delegations-post-request) | True  | 

### Return type
[**DelegationsPost201Response**](../models/delegations-post201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | DelegationsPost201Response
404 | Record Not Found | DelegationsPost404Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$DelegationsPostRequest = @""@

# Update a delegation

try {
    $Result = ConvertFrom-NERMJsonToDelegationsPostRequest -Json $DelegationsPostRequest
    Invoke-NERMDelegationsIdPatch -Id $Id -DelegationsPostRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMDelegationsIdPatch -Id $Id -DelegationsPostRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMDelegationsIdPatch"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delegations-post
Create a new delegation record.

[API Spec](https://developer.sailpoint.com/docs/api//delegations-post)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | DelegationsPostRequest | [**DelegationsPostRequest**](../models/delegations-post-request) | True  | 

### Return type
[**DelegationsPost201Response**](../models/delegations-post201-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Expected response to a valid request | DelegationsPost201Response
404 | Record Not Found | DelegationsPost404Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$DelegationsPostRequest = @""@

# Create a delegation

try {
    $Result = ConvertFrom-NERMJsonToDelegationsPostRequest -Json $DelegationsPostRequest
    Invoke-NERMDelegationsPost -DelegationsPostRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMDelegationsPost -DelegationsPostRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMDelegationsPost"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
