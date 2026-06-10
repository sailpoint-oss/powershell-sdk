---
id: intelidentitytimestamps
title: Intelidentitytimestamps
pagination_label: Intelidentitytimestamps
sidebar_label: Intelidentitytimestamps
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentitytimestamps', 'Intelidentitytimestamps'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelidentitytimestamps
tags: ['SDK', 'Software Development Kit', 'Intelidentitytimestamps', 'Intelidentitytimestamps']
---


# Intelidentitytimestamps

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CreatedAt** | **System.DateTime** | Timestamp when the identity record was first created in Identity Security Cloud. | [required]
**ModifiedAt** | **System.DateTime** | Timestamp when the identity record was last modified in Identity Security Cloud. | [required]

## Examples

- Prepare the resource
```powershell
$Intelidentitytimestamps = Initialize-Intelidentitytimestamps  -CreatedAt 2024-01-15T10:30Z `
 -ModifiedAt 2024-06-20T14:45Z
```

- Convert the resource to JSON
```powershell
$Intelidentitytimestamps | ConvertTo-JSON
```


[[Back to top]](#) 

