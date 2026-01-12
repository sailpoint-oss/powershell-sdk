---
id: beta-pending-approval-max-permitted-access-duration
title: PendingApprovalMaxPermittedAccessDuration
pagination_label: PendingApprovalMaxPermittedAccessDuration
sidebar_label: PendingApprovalMaxPermittedAccessDuration
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PendingApprovalMaxPermittedAccessDuration', 'BetaPendingApprovalMaxPermittedAccessDuration'] 
slug: /tools/sdk/powershell/beta/models/pending-approval-max-permitted-access-duration
tags: ['SDK', 'Software Development Kit', 'PendingApprovalMaxPermittedAccessDuration', 'BetaPendingApprovalMaxPermittedAccessDuration']
---


# PendingApprovalMaxPermittedAccessDuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Int32** | The numeric value of the duration. | [optional] 
**TimeUnit** |  **Enum** [  "HOURS",    "DAYS",    "WEEKS",    "MONTHS" ] | The time unit for the duration. | [optional] 

## Examples

- Prepare the resource
```powershell
$PendingApprovalMaxPermittedAccessDuration = Initialize-BetaPendingApprovalMaxPermittedAccessDuration  -Value 5 `
 -TimeUnit DAYS
```

- Convert the resource to JSON
```powershell
$PendingApprovalMaxPermittedAccessDuration | ConvertTo-JSON
```


[[Back to top]](#) 

