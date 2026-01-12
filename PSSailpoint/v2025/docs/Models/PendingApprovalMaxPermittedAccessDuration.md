---
id: v2025-pending-approval-max-permitted-access-duration
title: PendingApprovalMaxPermittedAccessDuration
pagination_label: PendingApprovalMaxPermittedAccessDuration
sidebar_label: PendingApprovalMaxPermittedAccessDuration
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PendingApprovalMaxPermittedAccessDuration', 'V2025PendingApprovalMaxPermittedAccessDuration'] 
slug: /tools/sdk/powershell/v2025/models/pending-approval-max-permitted-access-duration
tags: ['SDK', 'Software Development Kit', 'PendingApprovalMaxPermittedAccessDuration', 'V2025PendingApprovalMaxPermittedAccessDuration']
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
$PendingApprovalMaxPermittedAccessDuration = Initialize-V2025PendingApprovalMaxPermittedAccessDuration  -Value 5 `
 -TimeUnit DAYS
```

- Convert the resource to JSON
```powershell
$PendingApprovalMaxPermittedAccessDuration | ConvertTo-JSON
```


[[Back to top]](#) 

