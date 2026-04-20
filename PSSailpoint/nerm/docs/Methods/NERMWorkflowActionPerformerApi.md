---
id: nerm-workflow-action-performer
title: WorkflowActionPerformer
pagination_label: WorkflowActionPerformer
sidebar_label: WorkflowActionPerformer
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowActionPerformer', 'NERMWorkflowActionPerformer'] 
slug: /tools/sdk/powershell/nerm/methods/workflow-action-performer
tags: ['SDK', 'Software Development Kit', 'WorkflowActionPerformer', 'NERMWorkflowActionPerformer']
---

# WorkflowActionPerformer
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMWorkflowActionPerformer**](#create-workflow-action-performer) | **POST** `/workflow_action_performers` | Create a workflow action performer


## create-workflow-action-performer
Create a workflow action performer for an existing workflow action

[API Spec](https://developer.sailpoint.com/docs/api//create-workflow-action-performer)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateWorkflowActionPerformerRequest | [**CreateWorkflowActionPerformerRequest**](../models/create-workflow-action-performer-request) | True  | 

### Return type
[**CreateWorkflowActionPerformer200Response**](../models/create-workflow-action-performer200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateWorkflowActionPerformer200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateWorkflowActionPerformerRequest = @""@

# Create a workflow action performer

try {
    $Result = ConvertFrom-NERMJsonToCreateWorkflowActionPerformerRequest -Json $CreateWorkflowActionPerformerRequest
    New-NERMWorkflowActionPerformer -CreateWorkflowActionPerformerRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMWorkflowActionPerformer -CreateWorkflowActionPerformerRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMWorkflowActionPerformer"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
