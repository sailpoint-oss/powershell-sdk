---
id: beta-license
title: License
pagination_label: License
sidebar_label: License
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'License', 'BetaLicense'] 
slug: /tools/sdk/powershell/beta/models/license
tags: ['SDK', 'Software Development Kit', 'License', 'BetaLicense']
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
$License = Initialize-PSSailpoint.BetaLicense  -LicenseId idn:access-request `
 -LegacyFeatureName ACCESS_REQUEST
$License = @"{  "LicenseId": "idn:access-request", "LegacyFeatureName": "ACCESS_REQUEST" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToLicense -Json $License
```


[[Back to top]](#) 

