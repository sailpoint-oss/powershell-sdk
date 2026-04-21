---
id: nerm-workflow-sessions
title: WorkflowSessions
pagination_label: WorkflowSessions
sidebar_label: WorkflowSessions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowSessions', 'NERMWorkflowSessions'] 
slug: /tools/sdk/powershell/nerm/methods/workflow-sessions
tags: ['SDK', 'Software Development Kit', 'WorkflowSessions', 'NERMWorkflowSessions']
---

# WorkflowSessions
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-NERMWorkflowSession**](#get-workflow-session) | **GET** `/workflow_sessions/{id}` | Find workflow session
[**Get-NERMWorkflowSessionUpload**](#get-workflow-session-upload) | **GET** `/workflow_sessions/{id}/upload/{attribute_id}` | Retrieves workflow session attachment URL
[**Get-NERMWorkflowSessions**](#get-workflow-sessions) | **GET** `/workflow_sessions` | Get workflow sessions
[**Update-NERMWorkflowSession**](#patch-workflow-session) | **PATCH** `/workflow_sessions/{id}` | Update a workflow session
[**Submit-NERMWorkflowSession**](#submit-workflow-session) | **POST** `/workflow_sessions` | Create a workflow session
[**Submit-NERMWorkflowSessionUpload**](#submit-workflow-session-upload) | **POST** `/workflow_sessions/{id}/upload/{attribute_id}` | Uploads workflow session attachment


## get-workflow-session
Find workflow session by id

[API Spec](https://developer.sailpoint.com/docs/api//get-workflow-session)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
[**SubmitWorkflowSession200Response**](../models/submit-workflow-session200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitWorkflowSession200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Find workflow session

try {
    Get-NERMWorkflowSession -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-NERMWorkflowSession -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMWorkflowSession"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-workflow-session-upload
Retrieves the URL of an attachment attribute value from a workflow session

[API Spec](https://developer.sailpoint.com/docs/api//get-workflow-session-upload)

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

# Retrieves workflow session attachment URL

try {
    Get-NERMWorkflowSessionUpload -Id $Id -AttributeId $AttributeId 
    
    # Below is a request that includes all optional parameters
    # Get-NERMWorkflowSessionUpload -Id $Id -AttributeId $AttributeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMWorkflowSessionUpload"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-workflow-sessions
Get workflow sessions

[API Spec](https://developer.sailpoint.com/docs/api//get-workflow-sessions)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Limit | **Int32** |   (optional) | The maximum number of items to return.
  Query | Offset | **Int32** |   (optional) | The number of items to skip before starting to collect the result set.
  Query | Order | **String** |   (optional) | The field to order results by.
  Query | ProfileId | **String** |   (optional) | Profile ID to filter by
Path   | Uid | **String** |   (optional) | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters.
  Query | WorkflowId | **String** |   (optional) | Workflow ID for filtering
  Query | RequesterId | **String** |   (optional) | Requester ID for filtering
  Query | Status | **String** |   (optional) | filter by workflow session status
  Query | Metadata | **Boolean** |   (optional) (default to $false) | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page"").

### Return type
[**GetWorkflowSessions200Response**](../models/get-workflow-sessions200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetWorkflowSessions200Response
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
$ProfileId = "4e480441-451d-47d9-87c2-9a0f0fe135eb" # String | Profile ID to filter by (optional)
$Uid = "middle_initial_attribute" # String | UID of the object to retrieve, update, or delete.  A UID or ""specified identifier"" is a string typically in ""snake_case"" format that provides a human-readable description of the record.  They are commonly used to ensure sandbox, qa, staging and production tenants have the identical configuration items loaded.  Every record has a UID assigned when persisted. When not specified the system assigns one by default.  A default value looks like a 32 character string of random hexadecimal characters. (optional)
$WorkflowId = "bba9cfb2-96c1-4acb-ac79-a21732527265" # String | Workflow ID for filtering (optional)
$RequesterId = "c5e1dd38-7e29-464f-a0da-0c0d886d022a" # String | Requester ID for filtering (optional)
$Status = "waiting on workflow" # String | filter by workflow session status (optional)
$Metadata = $true # Boolean | Returns batching metadata in the response. This includes `total` as the total quantity, `next` as the path of the following query url, `limit` and `after_id` (if requested) with the next following id (null if it is the last ""page""). (optional) (default to $false)

# Get workflow sessions

try {
    Get-NERMWorkflowSessions 
    
    # Below is a request that includes all optional parameters
    # Get-NERMWorkflowSessions -Limit $Limit -Offset $Offset -Order $Order -ProfileId $ProfileId -Uid $Uid -WorkflowId $WorkflowId -RequesterId $RequesterId -Status $Status -Metadata $Metadata  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMWorkflowSessions"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-workflow-session
Update a workflow session by id

[API Spec](https://developer.sailpoint.com/docs/api//patch-workflow-session)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | SubmitWorkflowSessionRequest | [**SubmitWorkflowSessionRequest**](../models/submit-workflow-session-request) | True  | 
  Query | Run | **Boolean** |   (optional) (default to $false) | Will run the created/updated workflow session if successful

### Return type
[**SubmitWorkflowSession200Response**](../models/submit-workflow-session200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitWorkflowSession200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$SubmitWorkflowSessionRequest = @""@
$Run = $false # Boolean | Will run the created/updated workflow session if successful (optional) (default to $false)

# Update a workflow session

try {
    $Result = ConvertFrom-NERMJsonToSubmitWorkflowSessionRequest -Json $SubmitWorkflowSessionRequest
    Update-NERMWorkflowSession -Id $Id -SubmitWorkflowSessionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMWorkflowSession -Id $Id -SubmitWorkflowSessionRequest $Result -Run $Run  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMWorkflowSession"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-workflow-session
Create a workflow session

[API Spec](https://developer.sailpoint.com/docs/api//submit-workflow-session)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SubmitWorkflowSessionRequest | [**SubmitWorkflowSessionRequest**](../models/submit-workflow-session-request) | True  | 
  Query | Run | **Boolean** |   (optional) (default to $false) | Will run the created/updated workflow session if successful

### Return type
[**SubmitWorkflowSession200Response**](../models/submit-workflow-session200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | SubmitWorkflowSession200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SubmitWorkflowSessionRequest = @""@
$Run = $false # Boolean | Will run the created/updated workflow session if successful (optional) (default to $false)

# Create a workflow session

try {
    $Result = ConvertFrom-NERMJsonToSubmitWorkflowSessionRequest -Json $SubmitWorkflowSessionRequest
    Submit-NERMWorkflowSession -SubmitWorkflowSessionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMWorkflowSession -SubmitWorkflowSessionRequest $Result -Run $Run  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMWorkflowSession"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## submit-workflow-session-upload
Uploads a new attachment attribute value to a workflow session. The upload must be a FORM data type; this is not a JSON API. The upload must include the binary content of the payload under the 'file' named form element. The upload must not attempt to include the file name or its content type as a other form or JSON as parameters. The upload must not attempt to upload the file body as the POST body payload; it has to arrive as a FORM parameter. Do not use a `File/Binary` payload type for the POST operation in your API client.


[API Spec](https://developer.sailpoint.com/docs/api//submit-workflow-session-upload)

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

# Uploads workflow session attachment

try {
    Submit-NERMWorkflowSessionUpload -Id $Id -AttributeId $AttributeId 
    
    # Below is a request that includes all optional parameters
    # Submit-NERMWorkflowSessionUpload -Id $Id -AttributeId $AttributeId -File $File  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Submit-NERMWorkflowSessionUpload"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
