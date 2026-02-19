---
id: v2026-approval-config
title: ApprovalConfig
pagination_label: ApprovalConfig
sidebar_label: ApprovalConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalConfig', 'V2026ApprovalConfig'] 
slug: /tools/sdk/powershell/v2026/models/approval-config
tags: ['SDK', 'Software Development Kit', 'ApprovalConfig', 'V2026ApprovalConfig']
---


# ApprovalConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approvers** | **String** | Approvers must be listed as a comma-separated string, with each entry representing an individual or group authorized to approve account creation or deletion requests. | [optional] 
**Comments** |  **Enum** [  "APPROVAL",    "REJECTION",    "ALL",    "false" ] | Specifies the approval status for an account creation or deletion request. Allowed values are APPROVAL, REJECTION, ALL, and OFF. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalConfig = Initialize-V2026ApprovalConfig  -Approvers sourceOwner, accountOwner, manager, workgroup:f76ff96a-0815-402a-be1a-18cdc693b79f `
 -Comments REJECTION
```

- Convert the resource to JSON
```powershell
$ApprovalConfig | ConvertTo-JSON
```


[[Back to top]](#) 

