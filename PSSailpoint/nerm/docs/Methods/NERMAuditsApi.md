---
id: nerm-audits
title: Audits
pagination_label: Audits
sidebar_label: Audits
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Audits', 'NERMAudits'] 
slug: /tools/sdk/powershell/nerm/methods/audits
tags: ['SDK', 'Software Development Kit', 'Audits', 'NERMAudits']
---

# Audits
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Search-NERM**](#search) | **POST** `/audit_events/query` | Query for Audit events


## search
This endpoint provides a search engine for Audit Events by optionally combining subject_type, type, and subject_id to narrow down the audit events. A Subject Type of Profile links up to the AuditableProfile types. An Subject Type of WorkflowSession links up to the AuditableWorkflow types. An Subject Type of Get/Post/Patch/Delete links up to the AuditableApi types. The remaining Subject Types link up to the ActiveRecord types (configuration changes).

- Any workflow audit event created as of 10/11/2024 will be able to be queried by workflow name, workflow uid, or workflow profile type.
- Any profile audit event created as of 10/11/2024 will be able to be queried by profile type.
- The entity_type parameter has been updated to subject_type, which now matches what is in the response object.
- With the additional query filters added, there is a max of 5 filter parameters at one time (aside from pagination parameters)

To accommodate these changes, an API contract change was required.  Please read the updated API documentation for the new request syntax.

[API Spec](https://developer.sailpoint.com/docs/api//search)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | SearchRequest | [**SearchRequest**](../models/search-request) | True  | 

### Return type
[**Search200Response**](../models/search200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | AuditEvents | Search200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SearchRequest = @""@

# Query for Audit events

try {
    $Result = ConvertFrom-NERMJsonToSearchRequest -Json $SearchRequest
    Search-NERM -SearchRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Search-NERM -SearchRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Search-NERM"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
