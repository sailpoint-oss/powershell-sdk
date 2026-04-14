---
id: v2026-approval-cancel-request
title: ApprovalCancelRequest
pagination_label: ApprovalCancelRequest
sidebar_label: ApprovalCancelRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalCancelRequest', 'V2026ApprovalCancelRequest'] 
slug: /tools/sdk/powershell/v2026/models/approval-cancel-request
tags: ['SDK', 'Software Development Kit', 'ApprovalCancelRequest', 'V2026ApprovalCancelRequest']
---


# ApprovalCancelRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Optional comment associated with the cancel request. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalCancelRequest = Initialize-V2026ApprovalCancelRequest  -Comment Cancelled by administrator
```

- Convert the resource to JSON
```powershell
$ApprovalCancelRequest | ConvertTo-JSON
```


[[Back to top]](#) 

