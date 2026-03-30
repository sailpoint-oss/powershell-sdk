---
id: v2026-entitlement-v2-owner
title: EntitlementV2Owner
pagination_label: EntitlementV2Owner
sidebar_label: EntitlementV2Owner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementV2Owner', 'V2026EntitlementV2Owner'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-v2-owner
tags: ['SDK', 'Software Development Kit', 'EntitlementV2Owner', 'V2026EntitlementV2Owner']
---


# EntitlementV2Owner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The identity ID | [optional] 
**Type** |  **Enum** [  "IDENTITY" ] | The type of object | [optional] 
**Name** | **String** | The display name of the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementV2Owner = Initialize-V2026EntitlementV2Owner  -Id 2c9180827ca885d7017ca8ce28a000eb `
 -Type IDENTITY `
 -Name john.doe
```

- Convert the resource to JSON
```powershell
$EntitlementV2Owner | ConvertTo-JSON
```


[[Back to top]](#) 

