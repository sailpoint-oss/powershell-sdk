---
id: approval-config-escalation-config-escalation-chain-inner
title: ApprovalConfigEscalationConfigEscalationChainInner
pagination_label: ApprovalConfigEscalationConfigEscalationChainInner
sidebar_label: ApprovalConfigEscalationConfigEscalationChainInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalConfigEscalationConfigEscalationChainInner', 'ApprovalConfigEscalationConfigEscalationChainInner'] 
slug: /tools/sdk/powershell/sources/models/approval-config-escalation-config-escalation-chain-inner
tags: ['SDK', 'Software Development Kit', 'ApprovalConfigEscalationConfigEscalationChainInner', 'ApprovalConfigEscalationConfigEscalationChainInner']
---


# ApprovalConfigEscalationConfigEscalationChainInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tier** | **Int64** | Starting at 1 defines the order in which the identities will get assigned | [optional] 
**IdentityId** | **String** | Optional Identity ID of the type of identity defined in the 'identityType' field. | [optional] 
**IdentityType** |  **Enum** [  "IDENTITY",    "MANAGER_OF",    "ACCOUNT_OWNER",    "MACHINE_ACCOUNT_OWNER",    "MACHINE_IDENTITY_OWNER",    "MANAGER_OF_REQUESTED_TARGET_OWNER",    "MANAGER_OF_MACHINE_IDENTITY_OWNER",    "MANAGER_OF_ACCOUNT_OWNER",    "MANAGER_OF_MACHINE_ACCOUNT_OWNER",    "MANAGER_OF_REQUESTER",    "MANAGER_OF_REQUESTER_OWNER",    "MANAGER_OF_OWNER",    "ACCESS_PROFILE_OWNER",    "APPLICATION_OWNER",    "ENTITLEMENT_OWNER",    "ROLE_OWNER",    "SOURCE_OWNER",    "ACCESS_PROFILE_PRIMARY_OWNER",    "APPLICATION_PRIMARY_OWNER",    "ENTITLEMENT_PRIMARY_OWNER",    "ROLE_PRIMARY_OWNER",    "SOURCE_PRIMARY_OWNER" ] | Type of identityId in the escalation chain. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalConfigEscalationConfigEscalationChainInner = Initialize-ApprovalConfigEscalationConfigEscalationChainInner  -Tier 1 `
 -IdentityId fdfda352157d4cc79bb749953131b457 `
 -IdentityType IDENTITY
```

- Convert the resource to JSON
```powershell
$ApprovalConfigEscalationConfigEscalationChainInner | ConvertTo-JSON
```


[[Back to top]](#) 

