---
id: nerm-risk-scores
title: RiskScores
pagination_label: RiskScores
sidebar_label: RiskScores
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RiskScores', 'NERMRiskScores'] 
slug: /tools/sdk/powershell/nerm/methods/risk-scores
tags: ['SDK', 'Software Development Kit', 'RiskScores', 'NERMRiskScores']
---

# RiskScores
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMRiskScore**](#get-risk-score) | **GET** `/risk_scores/{id}` | Find risk score data
[**Get-NERMRiskScores**](#get-risk-scores) | **GET** `/risk_scores` | Get risk score data


## get-risk-score
Find risk score data by id

[API Spec](https://developer.sailpoint.com/docs/api//get-risk-score)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**GetRiskScore200Response**](../models/get-risk-score200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetRiskScore200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find risk score data

try {
    Get-NERMRiskScore -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRiskScore -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRiskScore"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-risk-scores
This endpoint can retrieve risk score data in bulk from Lifecycle

[API Spec](https://developer.sailpoint.com/docs/api//get-risk-scores)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | ObjectId | **String** |   (optional) | ID of an object for filtering. Used along with object_type
  Query | ObjectType | **String** |   (optional) | Type of object that object_id represents
  Query | OverallRiskLevelId | **String** |   (optional) | Overall risk level to filter by
  Query | ImpactRiskLevelId | **String** |   (optional) | Impact risk level to filter by
  Query | ProbabilityRiskLevelId | **String** |   (optional) | Probability risk level to filter by
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetRiskScores200Response**](../models/get-risk-scores200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetRiskScores200Response
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
$ObjectId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | ID of an object for filtering. Used along with object_type (optional)
$ObjectType = "Profile" # String | Type of object that object_id represents (optional)
$OverallRiskLevelId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | Overall risk level to filter by (optional)
$ImpactRiskLevelId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | Impact risk level to filter by (optional)
$ProbabilityRiskLevelId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | Probability risk level to filter by (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get risk score data

try {
    Get-NERMRiskScores 
    
    # Below is a request that includes all optional parameters
    # Get-NERMRiskScores -Limit $Limit -Offset $Offset -Order $Order -ObjectId $ObjectId -ObjectType $ObjectType -OverallRiskLevelId $OverallRiskLevelId -ImpactRiskLevelId $ImpactRiskLevelId -ProbabilityRiskLevelId $ProbabilityRiskLevelId -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMRiskScores"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
