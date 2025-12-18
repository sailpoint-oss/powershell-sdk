---
id: v2025-account-source-reference-governance-group
title: AccountSourceReferenceGovernanceGroup
pagination_label: AccountSourceReferenceGovernanceGroup
sidebar_label: AccountSourceReferenceGovernanceGroup
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountSourceReferenceGovernanceGroup', 'V2025AccountSourceReferenceGovernanceGroup'] 
slug: /tools/sdk/powershell/v2025/models/account-source-reference-governance-group
tags: ['SDK', 'Software Development Kit', 'AccountSourceReferenceGovernanceGroup', 'V2025AccountSourceReferenceGovernanceGroup']
---


# AccountSourceReferenceGovernanceGroup

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the governance group. | [required]
**Name** | **String** | Name of the governance group. | [required]

## Examples

- Prepare the resource
```powershell
$AccountSourceReferenceGovernanceGroup = Initialize-V2025AccountSourceReferenceGovernanceGroup  -Id group-456 `
 -Name governance-group-name
```

- Convert the resource to JSON
```powershell
$AccountSourceReferenceGovernanceGroup | ConvertTo-JSON
```


[[Back to top]](#) 

