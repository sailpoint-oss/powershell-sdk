---
id: intelprivilegelevel
title: Intelprivilegelevel
pagination_label: Intelprivilegelevel
sidebar_label: Intelprivilegelevel
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelprivilegelevel', 'Intelprivilegelevel'] 
slug: /tools/sdk/powershell/intelligence/models/intelprivilegelevel
tags: ['SDK', 'Software Development Kit', 'Intelprivilegelevel', 'Intelprivilegelevel']
---


# Intelprivilegelevel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Effective** |  **Enum** [  "HIGH",    "MEDIUM",    "LOW",    "NONE" ] | Effective privilege level for the privileged access item.  | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelprivilegelevel = Initialize-Intelprivilegelevel  -Effective HIGH
```

- Convert the resource to JSON
```powershell
$Intelprivilegelevel | ConvertTo-JSON
```


[[Back to top]](#) 

