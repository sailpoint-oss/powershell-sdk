---
id: v2024-work-items-count
title: WorkItemsCount
pagination_label: WorkItemsCount
sidebar_label: WorkItemsCount
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkItemsCount', 'V2024WorkItemsCount'] 
slug: /tools/sdk/powershell/v2024/models/work-items-count
tags: ['SDK', 'Software Development Kit', 'WorkItemsCount', 'V2024WorkItemsCount']
---


# WorkItemsCount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** | The count of work items | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkItemsCount = Initialize-PSSailpoint.V2024WorkItemsCount  -Count 29
$WorkItemsCount = @"{  "Count": "29" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToWorkItemsCount -Json $WorkItemsCount
```


[[Back to top]](#) 

