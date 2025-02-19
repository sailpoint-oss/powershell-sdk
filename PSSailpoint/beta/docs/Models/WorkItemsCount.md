---
id: beta-work-items-count
title: WorkItemsCount
pagination_label: WorkItemsCount
sidebar_label: WorkItemsCount
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkItemsCount', 'BetaWorkItemsCount'] 
slug: /tools/sdk/powershell/beta/models/work-items-count
tags: ['SDK', 'Software Development Kit', 'WorkItemsCount', 'BetaWorkItemsCount']
---


# WorkItemsCount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **Int32** | The count of work items | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkItemsCount = Initialize-PSSailpoint.BetaWorkItemsCount  -Count 29
$WorkItemsCount = @"{  "Count": "29" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToWorkItemsCount -Json $WorkItemsCount
```


[[Back to top]](#) 

