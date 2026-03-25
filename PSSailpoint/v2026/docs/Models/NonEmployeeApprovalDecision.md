---
id: v2026-non-employee-approval-decision
title: NonEmployeeApprovalDecision
pagination_label: NonEmployeeApprovalDecision
sidebar_label: NonEmployeeApprovalDecision
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'NonEmployeeApprovalDecision', 'V2026NonEmployeeApprovalDecision'] 
slug: /tools/sdk/powershell/v2026/models/non-employee-approval-decision
tags: ['SDK', 'Software Development Kit', 'NonEmployeeApprovalDecision', 'V2026NonEmployeeApprovalDecision']
---


# NonEmployeeApprovalDecision

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment on the approval item. | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeApprovalDecision = Initialize-V2026NonEmployeeApprovalDecision  -Comment Approved by manager
```

- Convert the resource to JSON
```powershell
$NonEmployeeApprovalDecision | ConvertTo-JSON
```


[[Back to top]](#) 

