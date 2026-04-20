---
id: nerm-pages
title: Pages
pagination_label: Pages
sidebar_label: Pages
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Pages', 'NERMPages'] 
slug: /tools/sdk/powershell/nerm/methods/pages
tags: ['SDK', 'Software Development Kit', 'Pages', 'NERMPages']
---

# Pages
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMProfilePage**](#create-profile-page) | **POST** `/pages/profile_pages` | Create a profile page
[**New-NERMWorkflowPage**](#create-workflow-page) | **POST** `/pages/workflow_pages` | Create a workflow page


## create-profile-page
Create a profile page

[API Spec](https://developer.sailpoint.com/docs/api//create-profile-page)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateProfilePageRequest | [**CreateProfilePageRequest**](../models/create-profile-page-request) | True  | 

### Return type
[**CreateProfilePage200Response**](../models/create-profile-page200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateProfilePage200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateProfilePageRequest = @""@

# Create a profile page

try {
    $Result = ConvertFrom-NERMJsonToCreateProfilePageRequest -Json $CreateProfilePageRequest
    New-NERMProfilePage -CreateProfilePageRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMProfilePage -CreateProfilePageRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMProfilePage"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-workflow-page
Create a workflow page

[API Spec](https://developer.sailpoint.com/docs/api//create-workflow-page)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateWorkflowPageRequest | [**CreateWorkflowPageRequest**](../models/create-workflow-page-request) | True  | 

### Return type
[**CreateProfilePage200Response**](../models/create-profile-page200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateProfilePage200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateWorkflowPageRequest = @""@

# Create a workflow page

try {
    $Result = ConvertFrom-NERMJsonToCreateWorkflowPageRequest -Json $CreateWorkflowPageRequest
    New-NERMWorkflowPage -CreateWorkflowPageRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMWorkflowPage -CreateWorkflowPageRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMWorkflowPage"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
