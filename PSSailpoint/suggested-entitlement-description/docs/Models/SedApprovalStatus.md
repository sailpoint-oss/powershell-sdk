---
id: sed-approval-status
title: SedApprovalStatus
pagination_label: SedApprovalStatus
sidebar_label: SedApprovalStatus
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SedApprovalStatus', 'SedApprovalStatus'] 
slug: /tools/sdk/powershell/suggestedentitlementdescription/models/sed-approval-status
tags: ['SDK', 'Software Development Kit', 'SedApprovalStatus', 'SedApprovalStatus']
---


# SedApprovalStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FailedReason** | **String** | failed reason will be display if status is failed | [optional] 
**Id** | **String** | Sed id | [optional] 
**Status** | **String** | SUCCESS | FAILED | [optional] 

## Examples

- Prepare the resource
```powershell
$SedApprovalStatus = Initialize-SedApprovalStatus  -FailedReason invalid status `
 -Id 016629d1-1d25-463f-97f3-0c6686846650 `
 -Status SUCCESS
```

- Convert the resource to JSON
```powershell
$SedApprovalStatus | ConvertTo-JSON
```


[[Back to top]](#) 

