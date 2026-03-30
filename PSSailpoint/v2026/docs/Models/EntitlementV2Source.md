---
id: v2026-entitlement-v2-source
title: EntitlementV2Source
pagination_label: EntitlementV2Source
sidebar_label: EntitlementV2Source
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementV2Source', 'V2026EntitlementV2Source'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-v2-source
tags: ['SDK', 'Software Development Kit', 'EntitlementV2Source', 'V2026EntitlementV2Source']
---


# EntitlementV2Source

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The source ID | [optional] 
**Type** | **String** | The source type, will always be ""SOURCE"" | [optional] 
**Name** | **String** | The source name | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementV2Source = Initialize-V2026EntitlementV2Source  -Id 2c9180827ca885d7017ca8ce28a000eb `
 -Type SOURCE `
 -Name ODS-AD-Source
```

- Convert the resource to JSON
```powershell
$EntitlementV2Source | ConvertTo-JSON
```


[[Back to top]](#) 

