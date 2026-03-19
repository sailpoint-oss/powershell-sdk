---
id: v2026-access-requests
title: AccessRequests
pagination_label: AccessRequests
sidebar_label: AccessRequests
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequests', 'V2026AccessRequests'] 
slug: /tools/sdk/powershell/v2026/methods/access-requests
tags: ['SDK', 'Software Development Kit', 'AccessRequests', 'V2026AccessRequests']
---

# AccessRequests
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026AccessRequestConfig**](#get-access-request-config) | **GET** `/access-request-config` | Get access request configuration
[**Set-V2026AccessRequestConfig**](#set-access-request-config) | **PUT** `/access-request-config` | Update access request configuration


## get-access-request-config
This endpoint returns the current access-request configuration.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-access-request-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**AccessRequestConfig**](../models/access-request-config)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Access Request Configuration Details. | AccessRequestConfig
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get access request configuration

try {
    Get-V2026AccessRequestConfig 
    
    # Below is a request that includes all optional parameters
    # Get-V2026AccessRequestConfig  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026AccessRequestConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## set-access-request-config
This endpoint replaces the current access-request configuration.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/set-access-request-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | AccessRequestConfig | [**AccessRequestConfig**](../models/access-request-config) | True  | 

### Return type
[**AccessRequestConfig**](../models/access-request-config)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Access Request Configuration Details. | AccessRequestConfig
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$AccessRequestConfig = @"{
  "govGroupVisibilityEnabled" : true,
  "requestOnBehalfOfConfig" : {
    "allowRequestOnBehalfOfEmployeeByManager" : true,
    "allowRequestOnBehalfOfAnyoneByAnyone" : true
  },
  "entitlementRequestConfig" : {
    "accessRequestConfig" : {
      "denialCommentRequired" : false,
      "approvalSchemes" : [ {
        "approverId" : "e3eab852-8315-467f-9de7-70eda97f63c8",
        "approverType" : "GOVERNANCE_GROUP"
      }, {
        "approverId" : "e3eab852-8315-467f-9de7-70eda97f63c8",
        "approverType" : "GOVERNANCE_GROUP"
      } ],
      "reauthorizationRequired" : false,
      "requestCommentRequired" : true,
      "requireEndDate" : true,
      "maxPermittedAccessDuration" : {
        "value" : 5,
        "timeUnit" : "DAYS"
      }
    },
    "revocationRequestConfig" : {
      "approvalSchemes" : [ {
        "approverId" : "e3eab852-8315-467f-9de7-70eda97f63c8",
        "approverType" : "GOVERNANCE_GROUP"
      }, {
        "approverId" : "e3eab852-8315-467f-9de7-70eda97f63c8",
        "approverType" : "GOVERNANCE_GROUP"
      } ]
    }
  },
  "reauthorizationEnabled" : true,
  "approvalsMustBeExternal" : true
}"@

# Update access request configuration

try {
    $Result = ConvertFrom-V2026JsonToAccessRequestConfig -Json $AccessRequestConfig
    Set-V2026AccessRequestConfig -AccessRequestConfig $Result 
    
    # Below is a request that includes all optional parameters
    # Set-V2026AccessRequestConfig -AccessRequestConfig $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Set-V2026AccessRequestConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
