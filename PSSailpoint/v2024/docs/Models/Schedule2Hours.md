---
id: v2024-schedule2-hours
title: Schedule2Hours
pagination_label: Schedule2Hours
sidebar_label: Schedule2Hours
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Schedule2Hours', 'V2024Schedule2Hours'] 
slug: /tools/sdk/powershell/v2024/models/schedule2-hours
tags: ['SDK', 'Software Development Kit', 'Schedule2Hours', 'V2024Schedule2Hours']
---


# Schedule2Hours

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | The application id | [optional] 
**AccountMatchConfig** | [**SelectorAccountMatchConfig**](selector-account-match-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Schedule2Hours = Initialize-PSSailpoint.V2024Schedule2Hours  -ApplicationId 2c91808874ff91550175097daaec161c" `
 -AccountMatchConfig null
$Schedule2Hours = @"undefined"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSchedule2Hours -Json $Schedule2Hours
```


[[Back to top]](#) 

