---
id: v2026-conflicting-access-criteria
title: ConflictingAccessCriteria
pagination_label: ConflictingAccessCriteria
sidebar_label: ConflictingAccessCriteria
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConflictingAccessCriteria', 'V2026ConflictingAccessCriteria'] 
slug: /tools/sdk/powershell/v2026/models/conflicting-access-criteria
tags: ['SDK', 'Software Development Kit', 'ConflictingAccessCriteria', 'V2026ConflictingAccessCriteria']
---


# ConflictingAccessCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeftCriteria** | [**AccessCriteria**](access-criteria) |  | [optional] 
**RightCriteria** | [**AccessCriteria**](access-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConflictingAccessCriteria = Initialize-V2026ConflictingAccessCriteria  -LeftCriteria null `
 -RightCriteria null
```

- Convert the resource to JSON
```powershell
$ConflictingAccessCriteria | ConvertTo-JSON
```


[[Back to top]](#) 

