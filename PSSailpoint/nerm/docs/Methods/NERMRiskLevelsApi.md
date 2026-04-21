---
id: nerm-risk-levels
title: RiskLevels
pagination_label: RiskLevels
sidebar_label: RiskLevels
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RiskLevels', 'NERMRiskLevels'] 
slug: /tools/sdk/powershell/nerm/methods/risk-levels
tags: ['SDK', 'Software Development Kit', 'RiskLevels', 'NERMRiskLevels']
---

# RiskLevels
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMRiskLevel**](#get-risk-level) | **GET** `/risk_levels/{id}` | Find risk level data
[**Get-NERMRiskLevels**](#get-risk-levels) | **GET** `/risk_levels` | Get risk level data


## get-risk-level
Find risk level data by id

[API Spec](https://developer.sailpoint.com/docs/api//get-risk-level)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetRiskLevel200Response**](../models/get-risk-level200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetRiskLevel200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find risk level data

try {
    Get-NERMRiskLevel -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRiskLevel -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRiskLevel"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-risk-levels
This endpoint can retrieve risk level data in bulk from Lifecycle

[API Spec](https://developer.sailpoint.com/docs/api//get-risk-levels)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | Label | **String** |   (optional) | The attribute label to filter by
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetRiskLevels200Response**](../models/get-risk-levels200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetRiskLevels200Response
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
$Label = "birthday" # String | The attribute label to filter by (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get risk level data

try {
    Get-NERMRiskLevels 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRiskLevels -Limit $Limit -Offset $Offset -Order $Order -Label $Label -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRiskLevels"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
