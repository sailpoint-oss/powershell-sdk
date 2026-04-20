---
id: nerm-create-approval-action-request
title: CreateApprovalActionRequest
pagination_label: CreateApprovalActionRequest
sidebar_label: CreateApprovalActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateApprovalActionRequest', 'NERMCreateApprovalActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-approval-action-request
tags: ['SDK', 'Software Development Kit', 'CreateApprovalActionRequest', 'NERMCreateApprovalActionRequest']
---


# CreateApprovalActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**ApprovalAction**](approval-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateApprovalActionRequest = Initialize-NERMCreateApprovalActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateApprovalActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

