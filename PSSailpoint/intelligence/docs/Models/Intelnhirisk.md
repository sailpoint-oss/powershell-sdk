---
id: intelnhirisk
title: Intelnhirisk
pagination_label: Intelnhirisk
sidebar_label: Intelnhirisk
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelnhirisk', 'Intelnhirisk'] 
slug: /tools/sdk/powershell/intelligence/models/intelnhirisk
tags: ['SDK', 'Software Development Kit', 'Intelnhirisk', 'Intelnhirisk']
---


# Intelnhirisk

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Severity** |  **Enum** [  "LOW",    "MEDIUM",    "HIGH",    "CRITICAL" ] | Risk band for the identity. | [optional] 
**LastModified** | **System.DateTime** | When the risk level last changed. Omitted when not available. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelnhirisk = Initialize-Intelnhirisk  -Severity HIGH `
 -LastModified 2026-10-10T16:48:51.866993644Z
```

- Convert the resource to JSON
```powershell
$Intelnhirisk | ConvertTo-JSON
```


[[Back to top]](#) 

