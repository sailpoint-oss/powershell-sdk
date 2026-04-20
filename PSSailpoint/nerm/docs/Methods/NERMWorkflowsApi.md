---
id: nerm-workflows
title: Workflows
pagination_label: Workflows
sidebar_label: Workflows
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Workflows', 'NERMWorkflows'] 
slug: /tools/sdk/powershell/nerm/methods/workflows
tags: ['SDK', 'Software Development Kit', 'Workflows', 'NERMWorkflows']
---

# Workflows
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMAutomatedWorkflow**](#create-automated-workflow) | **POST** `/workflows/automated_workflows` | Create an automated workflow
[**New-NERMBatchWorkflow**](#create-batch-workflow) | **POST** `/workflows/batch_workflows` | Create a batch workflow
[**New-NERMCreateWorkflow**](#create-create-workflow) | **POST** `/workflows/create_workflows` | Create a create workflow
[**New-NERMLoginWorkflow**](#create-login-workflow) | **POST** `/workflows/login_workflows` | Create a login workflow
[**New-NERMPasswordUpdateWorkflow**](#create-password-update-workflow) | **POST** `/workflows/password_reset_workflows` | Create a password reset workflow
[**New-NERMRegistrationWorkflow**](#create-registration-workflow) | **POST** `/workflows/registration_workflows` | Create a registration workflow
[**New-NERMUpdateWorkflow**](#create-update-workflow) | **POST** `/workflows/update_workflows` | Create an update workflow


## create-automated-workflow
Create an automated workflow

[API Spec](https://developer.sailpoint.com/docs/api//create-automated-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateAutomatedWorkflowRequest | [**CreateAutomatedWorkflowRequest**](../models/create-automated-workflow-request) | True  | 

### Return type
[**CreateCreateWorkflow200Response**](../models/create-create-workflow200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateCreateWorkflow200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateAutomatedWorkflowRequest = @""@

# Create an automated workflow

try {
    $Result = ConvertFrom-NERMJsonToCreateAutomatedWorkflowRequest -Json $CreateAutomatedWorkflowRequest
    New-NERMAutomatedWorkflow -CreateAutomatedWorkflowRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMAutomatedWorkflow -CreateAutomatedWorkflowRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMAutomatedWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-batch-workflow
Create a batch workflow

[API Spec](https://developer.sailpoint.com/docs/api//create-batch-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateBatchWorkflowRequest | [**CreateBatchWorkflowRequest**](../models/create-batch-workflow-request) | True  | 

### Return type
[**CreateCreateWorkflow200Response**](../models/create-create-workflow200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateCreateWorkflow200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateBatchWorkflowRequest = @""@

# Create a batch workflow

try {
    $Result = ConvertFrom-NERMJsonToCreateBatchWorkflowRequest -Json $CreateBatchWorkflowRequest
    New-NERMBatchWorkflow -CreateBatchWorkflowRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMBatchWorkflow -CreateBatchWorkflowRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMBatchWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-create-workflow
Create a create workflow

[API Spec](https://developer.sailpoint.com/docs/api//create-create-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateCreateWorkflowRequest | [**CreateCreateWorkflowRequest**](../models/create-create-workflow-request) | True  | 

### Return type
[**CreateCreateWorkflow200Response**](../models/create-create-workflow200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateCreateWorkflow200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateCreateWorkflowRequest = @""@

# Create a create workflow

try {
    $Result = ConvertFrom-NERMJsonToCreateCreateWorkflowRequest -Json $CreateCreateWorkflowRequest
    New-NERMCreateWorkflow -CreateCreateWorkflowRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMCreateWorkflow -CreateCreateWorkflowRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMCreateWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-login-workflow
Create a login workflow

[API Spec](https://developer.sailpoint.com/docs/api//create-login-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateLoginWorkflowRequest | [**CreateLoginWorkflowRequest**](../models/create-login-workflow-request) | True  | 

### Return type
[**CreateCreateWorkflow200Response**](../models/create-create-workflow200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateCreateWorkflow200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateLoginWorkflowRequest = @""@

# Create a login workflow

try {
    $Result = ConvertFrom-NERMJsonToCreateLoginWorkflowRequest -Json $CreateLoginWorkflowRequest
    New-NERMLoginWorkflow -CreateLoginWorkflowRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMLoginWorkflow -CreateLoginWorkflowRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMLoginWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-password-update-workflow
Create a password reset workflow

[API Spec](https://developer.sailpoint.com/docs/api//create-password-update-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateLoginWorkflowRequest | [**CreateLoginWorkflowRequest**](../models/create-login-workflow-request) | True  | 

### Return type
[**CreateCreateWorkflow200Response**](../models/create-create-workflow200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateCreateWorkflow200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateLoginWorkflowRequest = @""@

# Create a password reset workflow

try {
    $Result = ConvertFrom-NERMJsonToCreateLoginWorkflowRequest -Json $CreateLoginWorkflowRequest
    New-NERMPasswordUpdateWorkflow -CreateLoginWorkflowRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMPasswordUpdateWorkflow -CreateLoginWorkflowRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMPasswordUpdateWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-registration-workflow
Create a registration workflow

[API Spec](https://developer.sailpoint.com/docs/api//create-registration-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateCreateWorkflowRequest | [**CreateCreateWorkflowRequest**](../models/create-create-workflow-request) | True  | 

### Return type
[**CreateCreateWorkflow200Response**](../models/create-create-workflow200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateCreateWorkflow200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateCreateWorkflowRequest = @""@

# Create a registration workflow

try {
    $Result = ConvertFrom-NERMJsonToCreateCreateWorkflowRequest -Json $CreateCreateWorkflowRequest
    New-NERMRegistrationWorkflow -CreateCreateWorkflowRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMRegistrationWorkflow -CreateCreateWorkflowRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMRegistrationWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-update-workflow
Create an update workflow

[API Spec](https://developer.sailpoint.com/docs/api//create-update-workflow)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateUpdateWorkflowRequest | [**CreateUpdateWorkflowRequest**](../models/create-update-workflow-request) | True  | 

### Return type
[**CreateCreateWorkflow200Response**](../models/create-create-workflow200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateCreateWorkflow200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateUpdateWorkflowRequest = @""@

# Create an update workflow

try {
    $Result = ConvertFrom-NERMJsonToCreateUpdateWorkflowRequest -Json $CreateUpdateWorkflowRequest
    New-NERMUpdateWorkflow -CreateUpdateWorkflowRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMUpdateWorkflow -CreateUpdateWorkflowRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMUpdateWorkflow"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
