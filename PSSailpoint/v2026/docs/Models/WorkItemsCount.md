---
id: v2026-work-items-count
title: WorkItemsCount
pagination_label: WorkItemsCount
sidebar_label: WorkItemsCount
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkItemsCount', 'V2026WorkItemsCount'] 
slug: /tools/sdk/powershell/v2026/models/work-items-count
tags: ['SDK', 'Software Development Kit', 'WorkItemsCount', 'V2026WorkItemsCount']
---


# WorkItemsCount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** | The count of work items | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkItemsCount = Initialize-V2026WorkItemsCount  -Count 29
```

- Convert the resource to JSON
```powershell
$WorkItemsCount | ConvertTo-JSON
```


[[Back to top]](#) 

