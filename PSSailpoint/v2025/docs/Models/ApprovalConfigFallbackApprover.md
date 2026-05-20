---
id: v2025-approval-config-fallback-approver
title: ApprovalConfigFallbackApprover
pagination_label: ApprovalConfigFallbackApprover
sidebar_label: ApprovalConfigFallbackApprover
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalConfigFallbackApprover', 'V2025ApprovalConfigFallbackApprover'] 
slug: /tools/sdk/powershell/v2025/models/approval-config-fallback-approver
tags: ['SDK', 'Software Development Kit', 'ApprovalConfigFallbackApprover', 'V2025ApprovalConfigFallbackApprover']
---


# ApprovalConfigFallbackApprover

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityID** | **String** | Optional Identity ID of the type of identity defined in the 'type' field. | [optional] 
**Type** |  **Enum** [  "IDENTITY",    "MANAGER_OF",    "ACCOUNT_OWNER",    "MACHINE_ACCOUNT_OWNER",    "MACHINE_IDENTITY_OWNER",    "MANAGER_OF_REQUESTED_TARGET_OWNER",    "MANAGER_OF_MACHINE_IDENTITY_OWNER",    "MANAGER_OF_ACCOUNT_OWNER",    "MANAGER_OF_MACHINE_ACCOUNT_OWNER",    "MANAGER_OF_REQUESTER",    "MANAGER_OF_REQUESTER_OWNER",    "MANAGER_OF_OWNER",    "ACCESS_PROFILE_OWNER",    "APPLICATION_OWNER",    "ENTITLEMENT_OWNER",    "ROLE_OWNER",    "SOURCE_OWNER",    "REQUESTED_TARGET_OWNER",    "ACCESS_PROFILE_PRIMARY_OWNER",    "APPLICATION_PRIMARY_OWNER",    "ENTITLEMENT_PRIMARY_OWNER",    "ROLE_PRIMARY_OWNER",    "SOURCE_PRIMARY_OWNER",    "REQUESTED_TARGET_PRIMARY_OWNER" ] | Type of identityID for the fallback approver. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalConfigFallbackApprover = Initialize-V2025ApprovalConfigFallbackApprover  -IdentityID fdfda352157d4cc79bb749953131b457 `
 -Type MANAGER_OF
```

- Convert the resource to JSON
```powershell
$ApprovalConfigFallbackApprover | ConvertTo-JSON
```


[[Back to top]](#) 

