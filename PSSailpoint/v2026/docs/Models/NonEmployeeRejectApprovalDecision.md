---
id: v2026-non-employee-reject-approval-decision
title: NonEmployeeRejectApprovalDecision
pagination_label: NonEmployeeRejectApprovalDecision
sidebar_label: NonEmployeeRejectApprovalDecision
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'NonEmployeeRejectApprovalDecision', 'V2026NonEmployeeRejectApprovalDecision'] 
slug: /tools/sdk/powershell/v2026/models/non-employee-reject-approval-decision
tags: ['SDK', 'Software Development Kit', 'NonEmployeeRejectApprovalDecision', 'V2026NonEmployeeRejectApprovalDecision']
---


# NonEmployeeRejectApprovalDecision

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment on the approval item. | [required]

## Examples

- Prepare the resource
```powershell
$NonEmployeeRejectApprovalDecision = Initialize-V2026NonEmployeeRejectApprovalDecision  -Comment approved
```

- Convert the resource to JSON
```powershell
$NonEmployeeRejectApprovalDecision | ConvertTo-JSON
```


[[Back to top]](#) 

