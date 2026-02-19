---
id: v2026-entitlement-source
title: EntitlementSource
pagination_label: EntitlementSource
sidebar_label: EntitlementSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementSource', 'V2026EntitlementSource'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-source
tags: ['SDK', 'Software Development Kit', 'EntitlementSource', 'V2026EntitlementSource']
---


# EntitlementSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The source ID | [optional] 
**Type** | **String** | The source type, will always be ""SOURCE"" | [optional] 
**Name** | **String** | The source name | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementSource = Initialize-V2026EntitlementSource  -Id 2c9180827ca885d7017ca8ce28a000eb `
 -Type SOURCE `
 -Name ODS-AD-Source
```

- Convert the resource to JSON
```powershell
$EntitlementSource | ConvertTo-JSON
```


[[Back to top]](#) 

