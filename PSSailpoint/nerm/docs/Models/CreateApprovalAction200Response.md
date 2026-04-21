---
id: nerm-create-approval-action200-response
title: CreateApprovalAction200Response
pagination_label: CreateApprovalAction200Response
sidebar_label: CreateApprovalAction200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateApprovalAction200Response', 'NERMCreateApprovalAction200Response'] 
slug: /tools/sdk/powershell/nerm/models/create-approval-action200-response
tags: ['SDK', 'Software Development Kit', 'CreateApprovalAction200Response', 'NERMCreateApprovalAction200Response']
---


# CreateApprovalAction200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**WorkflowAction**](workflow-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateApprovalAction200Response = Initialize-NERMCreateApprovalAction200Response  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateApprovalAction200Response | ConvertTo-JSON
```


[[Back to top]](#) 

