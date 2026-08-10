---
id: violationreassigninput
title: Violationreassigninput
pagination_label: Violationreassigninput
sidebar_label: Violationreassigninput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Violationreassigninput', 'Violationreassigninput'] 
slug: /tools/sdk/powershell/sodviolations/models/violationreassigninput
tags: ['SDK', 'Software Development Kit', 'Violationreassigninput', 'Violationreassigninput']
---


# Violationreassigninput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReassignTo** | [**Reassigninput**](reassigninput) |  | [required]
**Comments** | **String** | Optional comments explaining the reassignment. | [optional] 

## Examples

- Prepare the resource
```powershell
$Violationreassigninput = Initialize-Violationreassigninput  -ReassignTo null `
 -Comments some comments about the reassignment
```

- Convert the resource to JSON
```powershell
$Violationreassigninput | ConvertTo-JSON
```


[[Back to top]](#) 

