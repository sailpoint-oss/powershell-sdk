---
id: intelnhirisksignalwire
title: Intelnhirisksignalwire
pagination_label: Intelnhirisksignalwire
sidebar_label: Intelnhirisksignalwire
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelnhirisksignalwire', 'Intelnhirisksignalwire'] 
slug: /tools/sdk/powershell/intelligence/models/intelnhirisksignalwire
tags: ['SDK', 'Software Development Kit', 'Intelnhirisksignalwire', 'Intelnhirisksignalwire']
---


# Intelnhirisksignalwire

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Stable identifier for this factor. | [required]
**Name** | **String** | Short title of the factor. | [required]
**Description** | **String** | Why this factor affects risk. | [required]
**SeverityValue** |  **Enum** [  "LOW",    "MEDIUM",    "HIGH",    "CRITICAL" ] | Severity of this factor. Omitted when not available. | [optional] 
**LastReceivedAt** | **System.DateTime** | When this factor was last observed. | [required]
**Status** | **String** | State of the factor. | [required]

## Examples

- Prepare the resource
```powershell
$Intelnhirisksignalwire = Initialize-Intelnhirisksignalwire  -Id human_owner_confirmed `
 -Name No human owner confirmed `
 -Description No attributed owner means weak accountability for access and remediation. `
 -SeverityValue CRITICAL `
 -LastReceivedAt 2026-10-10T16:45:29Z `
 -Status active
```

- Convert the resource to JSON
```powershell
$Intelnhirisksignalwire | ConvertTo-JSON
```


[[Back to top]](#) 

