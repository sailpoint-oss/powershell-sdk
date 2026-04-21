---
id: nermv2025-delegations
title: Delegations
pagination_label: Delegations
sidebar_label: Delegations
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Delegations', 'NERMV2025Delegations'] 
slug: /tools/sdk/powershell/nermv2025/methods/delegations
tags: ['SDK', 'Software Development Kit', 'Delegations', 'NERMV2025Delegations']
---

# Delegations
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api/v2025*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-NERMV2025DelegationsGet**](#delegations-get) | **GET** `/delegations` | List delegations
[**Invoke-NERMV2025DelegationsIdDelete**](#delegations-id-delete) | **DELETE** `/delegations/{id}` | Delete a delegation
[**Invoke-NERMV2025DelegationsIdGet**](#delegations-id-get) | **GET** `/delegations/{id}` | Get a single delegation
[**Invoke-NERMV2025DelegationsIdPatch**](#delegations-id-patch) | **PATCH** `/delegations/{id}` | Update a delegation
[**Invoke-NERMV2025DelegationsPost**](#delegations-post) | **POST** `/delegations` | Create a delegation


## delegations-get
Returns a list of delegation records, optionally filtered by delegate, delegator, or expiration status.

[API Spec](https://developer.sailpoint.com/docs/api//delegations-get)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | DelegateId | **String** |   (optional) (default to "false") | Filter by delegate ID
  Query | DelegatorId | **String** |   (optional) (default to "false") | Filter by delegator ID
  Query | Expired | **Boolean** |   (optional) (default to $false) | Filter by expiration status (true for expired, false for not expired)
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Include | **String** |   (optional) (default to "") | Include related resources body. For example, 'include=delegator,delegate'.

### Return type
[**DelegationsGet200Response**](../models/delegations-get200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | DelegationsGet200Response
500 | Internal Server Error - returned on unhandled exceptions. | DelegationsGet500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$DelegateId = "ac4aae0b-4140-49a4-a84c-126762fd0c8f" # String | Filter by delegate ID (optional) (default to "false")
$DelegatorId = "ac4aae0b-4140-49a4-a84c-126762fd0c8f" # String | Filter by delegator ID (optional) (default to "false")
$Expired = $true # Boolean | Filter by expiration status (true for expired, false for not expired) (optional) (default to $false)
$Limit = 5 # Int32 | The maximum number of items to return. (optional)
$Offset = 5 # Int32 | The number of items to skip before starting to collect the result set. (optional)
$Include = "delegator,delegate" # String | Include related resources body. For example, 'include=delegator,delegate'. (optional) (default to "")

# List delegations

try {
    Invoke-NERMV2025DelegationsGet 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMV2025DelegationsGet -DelegateId $DelegateId -DelegatorId $DelegatorId -Expired $Expired -Limit $Limit -Offset $Offset -Include $Include  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMV2025DelegationsGet"
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
500 | Internal Server Error - returned on unhandled exceptions. | DelegationsGet500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete a delegation

try {
    Invoke-NERMV2025DelegationsIdDelete -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMV2025DelegationsIdDelete -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMV2025DelegationsIdDelete"
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
500 | Internal Server Error - returned on unhandled exceptions. | DelegationsGet500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Get a single delegation

try {
    Invoke-NERMV2025DelegationsIdGet -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMV2025DelegationsIdGet -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMV2025DelegationsIdGet"
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
500 | Internal Server Error - returned on unhandled exceptions. | DelegationsGet500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$DelegationsPostRequest = @""@

# Update a delegation

try {
    $Result = ConvertFrom-NERMV2025JsonToDelegationsPostRequest -Json $DelegationsPostRequest
    Invoke-NERMV2025DelegationsIdPatch -Id $Id -DelegationsPostRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMV2025DelegationsIdPatch -Id $Id -DelegationsPostRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMV2025DelegationsIdPatch"
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
500 | Internal Server Error - returned on unhandled exceptions. | DelegationsGet500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$DelegationsPostRequest = @""@

# Create a delegation

try {
    $Result = ConvertFrom-NERMV2025JsonToDelegationsPostRequest -Json $DelegationsPostRequest
    Invoke-NERMV2025DelegationsPost -DelegationsPostRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-NERMV2025DelegationsPost -DelegationsPostRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-NERMV2025DelegationsPost"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
