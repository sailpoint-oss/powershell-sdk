---
id: v2026-jit-access
title: JITAccess
pagination_label: JITAccess
sidebar_label: JITAccess
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JITAccess', 'V2026JITAccess'] 
slug: /tools/sdk/powershell/v2026/methods/jit-access
tags: ['SDK', 'Software Development Kit', 'JITAccess', 'V2026JITAccess']
---

# JITAccess
  Use these APIs to configure JIT provisioning activation policy for the tenant.
OAuth scopes: **idn:jit-policy:read** and **idn:jit-policy:manage** (get config), **idn:jit-policy:update** and **idn:jit-policy:manage** (update config). JIT activation workflow APIs use **idn:jit-activation-workflow:*** scopes (activate, extend, deactivate, manage, and **idn:jit-activation-workflow-internal:manage**).
For REST contract details, use the JIT Access operations in this specification and the [SailPoint API documentation](https://developer.sailpoint.com/idn/api/).
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026JitActivationConfig**](#get-jit-activation-config) | **GET** `/jit-activation-config/{configType}` | Get JIT activation policy configuration
[**Update-V2026JitActivationConfig**](#patch-jit-activation-config) | **PATCH** `/jit-activation-config/{configType}` | Update JIT activation policy configuration


## get-jit-activation-config
Returns the tenant's current JIT activation policy configuration, including governed entitlement IDs, activation and extension time limits, default periods, notification settings, and whether the policy applies to future assignments.

The tenant comes from the authenticated request context (not the URL). Use **configType** to select which configuration to read. Returns **404** if that configuration has not been stored yet.

**User level:** POLICY_ADMIN (policy administrator).


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-jit-activation-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | ConfigType | **String** | True  | Configuration kind to read. Only **policy** (JIT activation policy) is supported today. 

### Return type
[**JITActivationConfigResponse**](../models/jit-activation-config-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Current JIT activation policy configuration, including limits, entitlements in scope, and notification-related fields. | JITActivationConfigResponse
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
$ConfigType = "policy" # String | Configuration kind to read. Only **policy** (JIT activation policy) is supported today. 

# Get JIT activation policy configuration

try {
    Get-V2026JitActivationConfig -ConfigType $ConfigType 
    
    # Below is a request that includes all optional parameters
    # Get-V2026JitActivationConfig -ConfigType $ConfigType  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026JitActivationConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-jit-activation-config
Updates the tenant's JIT activation policy configuration by applying one or more **replace** operations (same shape as JSON Patch: **op**, **path**, **value**). Use this to change entitlement lists, max/default activation and extension durations, notification recipients or template, and the apply-to-future-assignments flag.

The body must be a non-empty array. Only **replace** is supported; each **path** must be one of the values documented on the request item schema. The tenant is taken from the request context. **configType** selects which configuration to update. Returns **404** if the configuration does not exist, or **400** for an empty body, unknown **configType**, or invalid path/value.

**User level:** POLICY_ADMIN (policy administrator).


[API Spec](https://developer.sailpoint.com/docs/api/v2026/patch-jit-activation-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | ConfigType | **String** | True  | Configuration kind to update. Only **policy** (JIT activation policy) is supported today. 
 Body  | JitAccessOperationRequest | [**[]JitAccessOperationRequest**](../models/jit-access-operation-request) | True  | 

### Return type
[**JITActivationConfigResponse**](../models/jit-activation-config-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Full JIT activation policy configuration after applying all requested replace operations. | JITActivationConfigResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$ConfigType = "policy" # String | Configuration kind to update. Only **policy** (JIT activation policy) is supported today. 
 $JitAccessOperationRequest = @"{
  "op" : "replace",
  "path" : "/maxActivationPeriodMins",
  "value" : 60
}"@ # JitAccessOperationRequest[] | 
 

# Update JIT activation policy configuration

try {
    $Result = ConvertFrom-V2026JsonToJitAccessOperationRequest -Json $JitAccessOperationRequest
    Update-V2026JitActivationConfig -ConfigType $ConfigType -JitAccessOperationRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026JitActivationConfig -ConfigType $ConfigType -JitAccessOperationRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026JitActivationConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
