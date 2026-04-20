---
id: nerm-create-review-action-request
title: CreateReviewActionRequest
pagination_label: CreateReviewActionRequest
sidebar_label: CreateReviewActionRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateReviewActionRequest', 'NERMCreateReviewActionRequest'] 
slug: /tools/sdk/powershell/nerm/models/create-review-action-request
tags: ['SDK', 'Software Development Kit', 'CreateReviewActionRequest', 'NERMCreateReviewActionRequest']
---


# CreateReviewActionRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WorkflowAction** | [**ReviewAction**](review-action) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateReviewActionRequest = Initialize-NERMCreateReviewActionRequest  -WorkflowAction null
```

- Convert the resource to JSON
```powershell
$CreateReviewActionRequest | ConvertTo-JSON
```


[[Back to top]](#) 

