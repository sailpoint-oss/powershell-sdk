---
id: v2026-entitlement-dto-all-of-source
title: EntitlementDTOAllOfSource
pagination_label: EntitlementDTOAllOfSource
sidebar_label: EntitlementDTOAllOfSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementDTOAllOfSource', 'V2026EntitlementDTOAllOfSource'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-dto-all-of-source
tags: ['SDK', 'Software Development Kit', 'EntitlementDTOAllOfSource', 'V2026EntitlementDTOAllOfSource']
---


# EntitlementDTOAllOfSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Object reference id | [optional] 
**Value** | **String** | Object reference name | [optional] 
**Type** | **String** | SOURCE (added because exists in Entitlement V3) | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementDTOAllOfSource = Initialize-V2026EntitlementDTOAllOfSource  -Id 2b86153b97a94abc936c8a11b106aaf8 `
 -Value accountant `
 -Type SOURCE
```

- Convert the resource to JSON
```powershell
$EntitlementDTOAllOfSource | ConvertTo-JSON
```


[[Back to top]](#) 

