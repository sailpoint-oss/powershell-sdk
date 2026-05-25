---
id: v2026-intel-access-source-wire
title: IntelAccessSourceWire
pagination_label: IntelAccessSourceWire
sidebar_label: IntelAccessSourceWire
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelAccessSourceWire', 'V2026IntelAccessSourceWire'] 
slug: /tools/sdk/powershell/v2026/models/intel-access-source-wire
tags: ['SDK', 'Software Development Kit', 'IntelAccessSourceWire', 'V2026IntelAccessSourceWire']
---


# IntelAccessSourceWire

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Source identifier referenced by the account wire object. | [optional] 
**Name** | **String** | Human-readable source name shown in administrative consoles. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelAccessSourceWire = Initialize-V2026IntelAccessSourceWire  -Id 2c9180835d2e5168015d32f890301e89 `
 -Name Active Directory
```

- Convert the resource to JSON
```powershell
$IntelAccessSourceWire | ConvertTo-JSON
```


[[Back to top]](#) 

