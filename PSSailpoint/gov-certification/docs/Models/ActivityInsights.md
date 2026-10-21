---
id: activity-insights
title: ActivityInsights
pagination_label: ActivityInsights
sidebar_label: ActivityInsights
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ActivityInsights', 'ActivityInsights'] 
slug: /tools/sdk/powershell/govcertification/models/activity-insights
tags: ['SDK', 'Software Development Kit', 'ActivityInsights', 'ActivityInsights']
---


# ActivityInsights

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UsageDays** | **Int32** | The number of usage days in the last 90 days | [optional] 
**UsageDaysState** |  **Enum** [  "COMPLETE",    "UNKNOWN" ] | The state indicates whether data is missing, or whether there is usage data with no value | [optional] 

## Examples

- Prepare the resource
```powershell
$ActivityInsights = Initialize-ActivityInsights  -UsageDays 12 `
 -UsageDaysState COMPLETE
```

- Convert the resource to JSON
```powershell
$ActivityInsights | ConvertTo-JSON
```


[[Back to top]](#) 

