---
id: v2025-completed-approval-reviewer-comment
title: CompletedApprovalReviewerComment
pagination_label: CompletedApprovalReviewerComment
sidebar_label: CompletedApprovalReviewerComment
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CompletedApprovalReviewerComment', 'V2025CompletedApprovalReviewerComment'] 
slug: /tools/sdk/powershell/v2025/models/completed-approval-reviewer-comment
tags: ['SDK', 'Software Development Kit', 'CompletedApprovalReviewerComment', 'V2025CompletedApprovalReviewerComment']
---


# CompletedApprovalReviewerComment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment content. | [optional] 
**Created** | **System.DateTime** | Date and time comment was created. | [optional] 
**Author** | [**CommentDtoAuthor**](comment-dto-author) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CompletedApprovalReviewerComment = Initialize-V2025CompletedApprovalReviewerComment  -Comment This is a comment. `
 -Created 2017-07-11T18:45:37.098Z `
 -Author null
```

- Convert the resource to JSON
```powershell
$CompletedApprovalReviewerComment | ConvertTo-JSON
```


[[Back to top]](#) 

