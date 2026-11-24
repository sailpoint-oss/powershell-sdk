---
id: human-account-subtype-config-human-account-create-approval-config
title: HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig
pagination_label: HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig
sidebar_label: HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig', 'HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig'] 
slug: /tools/sdk/powershell/humanaccountsubtypes/models/human-account-subtype-config-human-account-create-approval-config
tags: ['SDK', 'Software Development Kit', 'HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig', 'HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig']
---


# HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approvers** | **String** | Comma-separated approver types, for example `manager, sourceOwner`. Approval requests are assigned in the order the approvers are listed. | [optional] 
**Comments** |  **Enum** [  "ALL",    "APPROVAL",    "REJECTION",    "OFF" ] | Comment configuration for the approval request. | [optional] 

## Examples

- Prepare the resource
```powershell
$HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig = Initialize-HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig  -Approvers manager, sourceOwner `
 -Comments ALL
```

- Convert the resource to JSON
```powershell
$HumanAccountSubtypeConfigHumanAccountCreateApprovalConfig | ConvertTo-JSON
```


[[Back to top]](#) 

