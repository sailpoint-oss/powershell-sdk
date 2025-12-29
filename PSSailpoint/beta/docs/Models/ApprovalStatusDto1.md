---
id: beta-approval-status-dto1
title: ApprovalStatusDto1
pagination_label: ApprovalStatusDto1
sidebar_label: ApprovalStatusDto1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalStatusDto1', 'BetaApprovalStatusDto1'] 
slug: /tools/sdk/powershell/beta/models/approval-status-dto1
tags: ['SDK', 'Software Development Kit', 'ApprovalStatusDto1', 'BetaApprovalStatusDto1']
---


# ApprovalStatusDto1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Forwarded** | **Boolean** | True if the request for this item was forwarded from one owner to another. | [optional] [default to $false]
**OriginalOwner** | [**ApprovalStatusDtoOriginalOwner**](approval-status-dto-original-owner) |  | [optional] 
**CurrentOwner** | [**ApprovalStatusDtoCurrentOwner**](approval-status-dto-current-owner) |  | [optional] 
**Modified** | **System.DateTime** | Time at which item was modified. | [optional] 
**Status** | [**ManualWorkItemState**](manual-work-item-state) |  | [optional] 
**Scheme** | [**ApprovalScheme**](approval-scheme) |  | [optional] 
**ErrorMessages** | [**[]ErrorMessageDto1**](error-message-dto1) | If the request failed, includes any error messages that were generated. | [optional] 
**Comment** | **String** | Comment, if any, provided by the approver. | [optional] 
**RemoveDate** | **System.DateTime** | The date the role or access profile or entitlement is no longer assigned to the specified identity. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalStatusDto1 = Initialize-BetaApprovalStatusDto1  -Forwarded false `
 -OriginalOwner null `
 -CurrentOwner null `
 -Modified 2019-08-23T18:52:57.398Z `
 -Status null `
 -Scheme null `
 -ErrorMessages null `
 -Comment I approve this request `
 -RemoveDate 2020-07-11T00:00Z
```

- Convert the resource to JSON
```powershell
$ApprovalStatusDto1 | ConvertTo-JSON
```


[[Back to top]](#) 

