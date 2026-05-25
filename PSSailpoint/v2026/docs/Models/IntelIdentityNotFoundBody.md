---
id: v2026-intel-identity-not-found-body
title: IntelIdentityNotFoundBody
pagination_label: IntelIdentityNotFoundBody
sidebar_label: IntelIdentityNotFoundBody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityNotFoundBody', 'V2026IntelIdentityNotFoundBody'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-not-found-body
tags: ['SDK', 'Software Development Kit', 'IntelIdentityNotFoundBody', 'V2026IntelIdentityNotFoundBody']
---


# IntelIdentityNotFoundBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** |  **Enum** [  "IDC_IDENTITY_NOT_FOUND" ] | Constant detail code indicating that no identity matched the supplied filter. | [required]
**Message** | **String** | Optional explanatory text describing why no identity was found. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelIdentityNotFoundBody = Initialize-V2026IntelIdentityNotFoundBody  -DetailCode IDC_IDENTITY_NOT_FOUND `
 -Message No identity matched the supplied SCIM filter expression.
```

- Convert the resource to JSON
```powershell
$IntelIdentityNotFoundBody | ConvertTo-JSON
```


[[Back to top]](#) 

