---
id: v2026-license
title: License
pagination_label: License
sidebar_label: License
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'License', 'V2026License'] 
slug: /tools/sdk/powershell/v2026/models/license
tags: ['SDK', 'Software Development Kit', 'License', 'V2026License']
---


# License

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LicenseId** | **String** | Name of the license | [optional] 
**LegacyFeatureName** | **String** | Legacy name of the license | [optional] 

## Examples

- Prepare the resource
```powershell
$License = Initialize-V2026License  -LicenseId idn:access-request `
 -LegacyFeatureName ACCESS_REQUEST
```

- Convert the resource to JSON
```powershell
$License | ConvertTo-JSON
```


[[Back to top]](#) 

