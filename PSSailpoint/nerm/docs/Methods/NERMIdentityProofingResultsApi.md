---
id: nerm-identity-proofing-results
title: IdentityProofingResults
pagination_label: IdentityProofingResults
sidebar_label: IdentityProofingResults
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityProofingResults', 'NERMIdentityProofingResults'] 
slug: /tools/sdk/powershell/nerm/methods/identity-proofing-results
tags: ['SDK', 'Software Development Kit', 'IdentityProofingResults', 'NERMIdentityProofingResults']
---

# IdentityProofingResults
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMIdentityProofingResults**](#get-identity-proofing-results) | **GET** `/identity_proofing_results` | Get identity proofing result data


## get-identity-proofing-results
Retrieves identity proofing result data in bulk from Lifecycle

[API Spec](https://developer.sailpoint.com/docs/api//get-identity-proofing-results)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | ProfileId | **String** |   (optional) | Profile ID to filter by
  Query | WorkflowSessionId | **String** |   (optional) | Workflow Session ID to filter by
  Query | Result | **String** |   (optional) | ID Proofing Result to filter by
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetIdentityProofingResults200Response**](../models/get-identity-proofing-results200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetIdentityProofingResults200Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Limit = 5 # Int32 | The maximum number of items to return. (optional)
$Offset = 5 # Int32 | The number of items to skip before starting to collect the result set. (optional)
$Order = "created_at" # String | The field to order results by. (optional)
$ProfileId = "4e480441-451d-47d9-87c2-9a0f0fe135eb" # String | Profile ID to filter by (optional)
$WorkflowSessionId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | Workflow Session ID to filter by (optional)
$Result = "pass" # String | ID Proofing Result to filter by (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get identity proofing result data

try {
    Get-NERMIdentityProofingResults 
    
    # Below is a request that includes all optional parameters
    # Get-NERMIdentityProofingResults -Limit $Limit -Offset $Offset -Order $Order -ProfileId $ProfileId -WorkflowSessionId $WorkflowSessionId -Result $Result -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMIdentityProofingResults"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
