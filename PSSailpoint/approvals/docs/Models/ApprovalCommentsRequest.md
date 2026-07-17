---
id: approval-comments-request
title: ApprovalCommentsRequest
pagination_label: ApprovalCommentsRequest
sidebar_label: ApprovalCommentsRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalCommentsRequest', 'ApprovalCommentsRequest'] 
slug: /tools/sdk/powershell/approvals/models/approval-comments-request
tags: ['SDK', 'Software Development Kit', 'ApprovalCommentsRequest', 'ApprovalCommentsRequest']
---


# ApprovalCommentsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment associated with the request. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalCommentsRequest = Initialize-ApprovalCommentsRequest  -Comment Approval comment.
```

- Convert the resource to JSON
```powershell
$ApprovalCommentsRequest | ConvertTo-JSON
```


[[Back to top]](#) 

