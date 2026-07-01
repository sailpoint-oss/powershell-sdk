---
id: intelprivilegedaccessslice
title: Intelprivilegedaccessslice
pagination_label: Intelprivilegedaccessslice
sidebar_label: Intelprivilegedaccessslice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelprivilegedaccessslice', 'Intelprivilegedaccessslice'] 
slug: /tools/sdk/powershell/intelligence/models/intelprivilegedaccessslice
tags: ['SDK', 'Software Development Kit', 'Intelprivilegedaccessslice', 'Intelprivilegedaccessslice']
---


# Intelprivilegedaccessslice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]Intelprivilegedaccessitemwire**](intelprivilegedaccessitemwire) | Privileged access items for the identity. | [required]

## Examples

- Prepare the resource
```powershell
$Intelprivilegedaccessslice = Initialize-Intelprivilegedaccessslice  -Items null
```

- Convert the resource to JSON
```powershell
$Intelprivilegedaccessslice | ConvertTo-JSON
```


[[Back to top]](#) 

