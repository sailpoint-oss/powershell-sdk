---
id: approval-comment3
title: ApprovalComment3
pagination_label: ApprovalComment3
sidebar_label: ApprovalComment3
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalComment3', 'ApprovalComment3'] 
slug: /tools/sdk/powershell/approvals/models/approval-comment3
tags: ['SDK', 'Software Development Kit', 'ApprovalComment3', 'ApprovalComment3']
---


# ApprovalComment3

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
$ApprovalComment3 = Initialize-ApprovalComment3  -Author null `
 -Comment Looks good `
 -CreatedDate 2023-04-12T23:20:50.52Z `
 -CommentId 38453251-6be2-5f8f-df93-5ce19e295837
```

- Convert the resource to JSON
```powershell
$ApprovalComment3 | ConvertTo-JSON
```


[[Back to top]](#) 

