---
id: intelidentitynotfoundbody
title: Intelidentitynotfoundbody
pagination_label: Intelidentitynotfoundbody
sidebar_label: Intelidentitynotfoundbody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentitynotfoundbody', 'Intelidentitynotfoundbody'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelidentitynotfoundbody
tags: ['SDK', 'Software Development Kit', 'Intelidentitynotfoundbody', 'Intelidentitynotfoundbody']
---


# Intelidentitynotfoundbody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** |  **Enum** [  "IDC_IDENTITY_NOT_FOUND" ] | Constant detail code indicating that no identity matched the supplied filter. | [required]
**Message** | **String** | Optional explanatory text describing why no identity was found. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelidentitynotfoundbody = Initialize-Intelidentitynotfoundbody  -DetailCode IDC_IDENTITY_NOT_FOUND `
 -Message No identity matched the supplied SCIM filter expression.
```

- Convert the resource to JSON
```powershell
$Intelidentitynotfoundbody | ConvertTo-JSON
```


[[Back to top]](#) 

