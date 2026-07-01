---
id: intelaccessitemhistoryevent
title: Intelaccessitemhistoryevent
pagination_label: Intelaccessitemhistoryevent
sidebar_label: Intelaccessitemhistoryevent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelaccessitemhistoryevent', 'Intelaccessitemhistoryevent'] 
slug: /tools/sdk/powershell/intelligence/models/intelaccessitemhistoryevent
tags: ['SDK', 'Software Development Kit', 'Intelaccessitemhistoryevent', 'Intelaccessitemhistoryevent']
---


# Intelaccessitemhistoryevent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** |  **Enum** [  "AccessItemAssociated",    "AccessItemRemoved",    "AccountStatusChanged" ] | Type of access-item history event. | [required]
**DateTime** | **System.DateTime** | Event timestamp. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelaccessitemhistoryevent = Initialize-Intelaccessitemhistoryevent  -EventType AccessItemRemoved `
 -DateTime 2026-05-11T09:40:04.496Z
```

- Convert the resource to JSON
```powershell
$Intelaccessitemhistoryevent | ConvertTo-JSON
```


[[Back to top]](#) 

