---
id: v2026-data-access-impact-score
title: DataAccessImpactScore
pagination_label: DataAccessImpactScore
sidebar_label: DataAccessImpactScore
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DataAccessImpactScore', 'V2026DataAccessImpactScore'] 
slug: /tools/sdk/powershell/v2026/models/data-access-impact-score
tags: ['SDK', 'Software Development Kit', 'DataAccessImpactScore', 'V2026DataAccessImpactScore']
---


# DataAccessImpactScore

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | Impact Score for this data | [optional] 

## Examples

- Prepare the resource
```powershell
$DataAccessImpactScore = Initialize-V2026DataAccessImpactScore  -Value Medium
```

- Convert the resource to JSON
```powershell
$DataAccessImpactScore | ConvertTo-JSON
```


[[Back to top]](#) 

