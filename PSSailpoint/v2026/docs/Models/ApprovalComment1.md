---
id: v2026-approval-comment1
title: ApprovalComment1
pagination_label: ApprovalComment1
sidebar_label: ApprovalComment1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalComment1', 'V2026ApprovalComment1'] 
slug: /tools/sdk/powershell/v2026/models/approval-comment1
tags: ['SDK', 'Software Development Kit', 'ApprovalComment1', 'V2026ApprovalComment1']
---


# ApprovalComment1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Author** | [**ApprovalIdentity**](approval-identity) |  | [optional] 
**Comment** | **String** | Comment to be left on an approval | [optional] 
**CreatedDate** | **String** | Date the comment was created | [optional] 
**CommentId** | **String** | ID of the comment | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalComment1 = Initialize-V2026ApprovalComment1  -Author null `
 -Comment Looks good `
 -CreatedDate 2023-04-12T23:20:50.52Z `
 -CommentId 38453251-6be2-5f8f-df93-5ce19e295837
```

- Convert the resource to JSON
```powershell
$ApprovalComment1 | ConvertTo-JSON
```


[[Back to top]](#) 

