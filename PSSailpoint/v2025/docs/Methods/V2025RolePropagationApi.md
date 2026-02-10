---
id: v2025-role-propagation
title: RolePropagation
pagination_label: RolePropagation
sidebar_label: RolePropagation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RolePropagation', 'V2025RolePropagation'] 
slug: /tools/sdk/powershell/v2025/methods/role-propagation
tags: ['SDK', 'Software Development Kit', 'RolePropagation', 'V2025RolePropagation']
---

# RolePropagation
  Role Change Propagation ensures that any changes to the composition of a role’s access objects 
(entitlements, access profiles, or dimensions) are applied to all member identities. 
For example: If an entitlement is removed from a role, all identities assigned to that role 
should lose access to that entitlement as part of this process.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2025*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Suspend-V2025RolePropagation**](#cancel-role-propagation) | **POST** `/role-propagation/terminate` | Terminate Role Propagation process
[**Get-V2025OngoingRolePropagation**](#get-ongoing-role-propagation) | **GET** `/role-propagation/is-running` | Get ongoing Role Propagation process
[**Get-V2025RolePropagationStatus**](#get-role-propagation-status) | **GET** `/role-propagation/{rolePropagationId}/status` | Get status of Role-Propagation process
[**Start-V2025RolePropagation**](#start-role-propagation) | **POST** `/role-propagation` | Initiate Role Propagation process


## cancel-role-propagation
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint terminates the ongoing role change propagation process for a tenant.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/cancel-role-propagation)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | Role Propagation has been successfully terminated. | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Terminate Role Propagation process

try {
    Suspend-V2025RolePropagation -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Suspend-V2025RolePropagation -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Suspend-V2025RolePropagation"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-ongoing-role-propagation
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint returns the information of ongoing role change propagation process for a tenant. It returns the information whether the role propagation process is currently running or not, If it is running it returns the details of the ongoing role propagation process. The execution stage of the role propagation process can be one of the following: - PENDING - The role propagation process is queued to be executed. - DATA_AGGREGATION_RUNNING - The role propagation process is currently aggregating data. - LAUNCH_PROVISIONING - The role propagation process has started to provision the access to the identities. - SUCCEEDED - The role propagation process has successfully completed. - FAILED - The role propagation process has failed. - TERMINATED - The role propagation process was externally terminated.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-ongoing-role-propagation)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
[**RolePropagationOngoingResponse**](../models/role-propagation-ongoing-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Information of ongoing role propagation process. | RolePropagationOngoingResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get ongoing Role Propagation process

try {
    Get-V2025OngoingRolePropagation -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-V2025OngoingRolePropagation -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025OngoingRolePropagation"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-role-propagation-status
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint returns the information of the specified role change propagation process. The execution stage of the role propagation process can be one of the following:
    - PENDING - The role propagation process is queued to be executed.
    - DATA_AGGREGATION_RUNNING - The role propagation process is currently aggregating data.
    - LAUNCH_PROVISIONING - The role propagation process has started to provision the access to the identities.
    - SUCCEEDED - The role propagation process has successfully completed.
    - FAILED - The role propagation process has failed.
    - TERMINATED - The role propagation process was externally terminated.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-role-propagation-status)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | RolePropagationId | **String** | True  | The ID of the role propagation process to retrieve the status for.

### Return type
[**RolePropagationStatusResponse**](../models/role-propagation-status-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Information of the role propagation process. | RolePropagationStatusResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RolePropagationId = "47b9fb02-e12e-42ba-8bfe-1860d78c88eb" # String | The ID of the role propagation process to retrieve the status for.

# Get status of Role-Propagation process

try {
    Get-V2025RolePropagationStatus -XSailPointExperimental $XSailPointExperimental -RolePropagationId $RolePropagationId 
    
    # Below is a request that includes all optional parameters
    # Get-V2025RolePropagationStatus -XSailPointExperimental $XSailPointExperimental -RolePropagationId $RolePropagationId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025RolePropagationStatus"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## start-role-propagation
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint initiates a role change propagation process for a tenant asynchronously.  If all preconditions are met, the request is accepted and a rolePropagationId is returned which  can be used to view the status.
API throws 4xx if any of the following conditions are met - Role propagation feature is disabled  - There is an ongoing role propagation for the tenant - Role refresh needs to be kicked off as part of the role propagation (skipRoleRefresh=false) and there is an ongoing refresh for the tenant

[API Spec](https://developer.sailpoint.com/docs/api/v2025/start-role-propagation)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
  Query | SkipRoleRefresh | **Boolean** |   (optional) (default to $false) | When true, the role refresh is not performed. Keeping it false is recommended.

### Return type
[**RolePropagationResponse**](../models/role-propagation-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Role Propagation has sucessfully started. | RolePropagationResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SkipRoleRefresh = $true # Boolean | When true, the role refresh is not performed. Keeping it false is recommended. (optional) (default to $false)

# Initiate Role Propagation process

try {
    Start-V2025RolePropagation -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Start-V2025RolePropagation -XSailPointExperimental $XSailPointExperimental -SkipRoleRefresh $SkipRoleRefresh  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Start-V2025RolePropagation"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
