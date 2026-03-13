---
id: v2026-notifications
title: Notifications
pagination_label: Notifications
sidebar_label: Notifications
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Notifications', 'V2026Notifications'] 
slug: /tools/sdk/powershell/v2026/methods/notifications
tags: ['SDK', 'Software Development Kit', 'Notifications', 'V2026Notifications']
---

# Notifications
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026NotificationTemplateVariables**](#get-notification-template-variables) | **GET** `/notification-template-variables/{key}/{medium}` | Get notification template variables


## get-notification-template-variables
Returns global variables and template-specific variables for a given notification template key and medium.
Use these variable names in template content; they are replaced at send time with the corresponding values.
Variable lists can be sorted by key, type, or description via the sorters query parameter (default ascending by key).


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-notification-template-variables)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Key | **String** | True  | The notification template key. Valid keys (and key/medium pairs) are available from the list notification templates operation. 
Path   | Medium | **String** | True  | The notification template medium (e.g. EMAIL, SLACK, TEAMS). Valid key/medium pairs are available from the list notification templates operation. 
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **key, type, description**

### Return type
[**TemplateVariablesDto**](../models/template-variables-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Global and template-specific variables for the given key and medium. | TemplateVariablesDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Key = "approval_request_notification" # String | The notification template key. Valid keys (and key/medium pairs) are available from the list notification templates operation. 
$Medium = "EMAIL" # String | The notification template medium (e.g. EMAIL, SLACK, TEAMS). Valid key/medium pairs are available from the list notification templates operation. 
$Sorters = "-description" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **key, type, description** (optional)

# Get notification template variables

try {
    Get-V2026NotificationTemplateVariables -Key $Key -Medium $Medium 
    
    # Below is a request that includes all optional parameters
    # Get-V2026NotificationTemplateVariables -Key $Key -Medium $Medium -Sorters $Sorters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026NotificationTemplateVariables"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
