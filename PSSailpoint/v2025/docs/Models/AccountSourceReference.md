---
id: v2025-account-source-reference
title: AccountSourceReference
pagination_label: AccountSourceReference
sidebar_label: AccountSourceReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountSourceReference', 'V2025AccountSourceReference'] 
slug: /tools/sdk/powershell/v2025/models/account-source-reference
tags: ['SDK', 'Software Development Kit', 'AccountSourceReference', 'V2025AccountSourceReference']
---


# AccountSourceReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the source. | [required]
**Name** | **String** | The name of the source. | [required]
**Alias** | **String** | The alias of the source. | [required]
**Owner** | [**AccountSourceReferenceOwner**](account-source-reference-owner) |  | [required]
**GovernanceGroup** | [**AccountSourceReferenceGovernanceGroup**](account-source-reference-governance-group) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountSourceReference = Initialize-V2025AccountSourceReference  -Id 2c918082814e693601816e09471b29b6 `
 -Name Active Directory `
 -Alias AD `
 -Owner null `
 -GovernanceGroup null
```

- Convert the resource to JSON
```powershell
$AccountSourceReference | ConvertTo-JSON
```


[[Back to top]](#) 

