---
id: v2026-jit-activations
title: JITActivations
pagination_label: JITActivations
sidebar_label: JITActivations
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JITActivations', 'V2026JITActivations'] 
slug: /tools/sdk/powershell/v2026/methods/jit-activations
tags: ['SDK', 'Software Development Kit', 'JITActivations', 'V2026JITActivations']
---

# JITActivations
  Use this API to start and manage Just-In-Time (JIT) Privileged activation workflows for entitlement connections.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Start-V2026ActivateWorkflow**](#start-activate-workflow) | **POST** `/jit-activations/activate` | Start JIT activation workflow
[**Start-V2026DeactivateWorkflow**](#start-deactivate-workflow) | **POST** `/jit-activations/deactivate` | Deactivate JIT activation workflow
[**Start-V2026ExtendWorkflow**](#start-extend-workflow) | **POST** `/jit-activations/extend` | Extend JIT activation workflow


## start-activate-workflow
Starts a JIT Privileged (JIT P) activation workflow for the given entitlement connection and duration.
The service performs quick validation; the workflow performs additional validation.

The response is returned with HTTP 202 Accepted while the workflow initializes.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/start-activate-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | JitActivationActivateRequest | [**JitActivationActivateRequest**](../models/jit-activation-activate-request) | True  | 

### Return type
[**JitActivationActivateResponse**](../models/jit-activation-activate-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Accepted. The activation workflow was accepted and is running.  | JitActivationActivateResponse
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
$JitActivationActivateRequest = @"{
  "activationPeriodMins" : 120,
  "connectionId" : "757fb803-9024-5861-e510-83a56e4c5bd3"
}"@

# Start JIT activation workflow

try {
    $Result = ConvertFrom-V2026JsonToJitActivationActivateRequest -Json $JitActivationActivateRequest
    Start-V2026ActivateWorkflow -JitActivationActivateRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Start-V2026ActivateWorkflow -JitActivationActivateRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Start-V2026ActivateWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## start-deactivate-workflow
Sends a signal to a running JIT Privileged (JIT P) activation workflow to deactivate.

This request cannot be applied to a workflow that does not exist or whose execution has already completed.
The client receives an error response in those cases.

The response is returned with HTTP 202 Accepted after the signal is sent.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/start-deactivate-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | JitActivationDeactivateRequest | [**JitActivationDeactivateRequest**](../models/jit-activation-deactivate-request) | True  | 

### Return type
[**JitActivationDeactivateResponse**](../models/jit-activation-deactivate-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Accepted. The deactivation signal was sent to the workflow.  | JitActivationDeactivateResponse
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
$JitActivationDeactivateRequest = @"{
  "connectionId" : "757fb803-9024-5861-e510-83a56e4c5bd3"
}"@

# Deactivate JIT activation workflow

try {
    $Result = ConvertFrom-V2026JsonToJitActivationDeactivateRequest -Json $JitActivationDeactivateRequest
    Start-V2026DeactivateWorkflow -JitActivationDeactivateRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Start-V2026DeactivateWorkflow -JitActivationDeactivateRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Start-V2026DeactivateWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## start-extend-workflow
Sends a signal to a running JIT Privileged (JIT P) activation workflow to extend the activation period
by the requested number of minutes.

This request cannot be applied to a workflow that does not exist or whose execution has already completed.
The client receives an error response in those cases.

The response is returned with HTTP 202 Accepted after the signal is sent.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/start-extend-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | JitActivationExtendRequest | [**JitActivationExtendRequest**](../models/jit-activation-extend-request) | True  | 

### Return type
[**JitActivationExtendResponse**](../models/jit-activation-extend-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Accepted. The extend signal was sent to the workflow.  | JitActivationExtendResponse
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
$JitActivationExtendRequest = @"{
  "activationPeriodExtensionMins" : 120,
  "connectionId" : "757fb803-9024-5861-e510-83a56e4c5bd3"
}"@

# Extend JIT activation workflow

try {
    $Result = ConvertFrom-V2026JsonToJitActivationExtendRequest -Json $JitActivationExtendRequest
    Start-V2026ExtendWorkflow -JitActivationExtendRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Start-V2026ExtendWorkflow -JitActivationExtendRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Start-V2026ExtendWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
