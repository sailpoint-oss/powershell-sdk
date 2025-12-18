---
id: v2025-access-duration
title: AccessDuration
pagination_label: AccessDuration
sidebar_label: AccessDuration
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessDuration', 'V2025AccessDuration'] 
slug: /tools/sdk/powershell/v2025/models/access-duration
tags: ['SDK', 'Software Development Kit', 'AccessDuration', 'V2025AccessDuration']
---


# AccessDuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Int32** | The numeric value representing the amount of time, which is defined in the **timeUnit**. | [optional] 
**TimeUnit** |  **Enum** [  "HOURS",    "DAYS",    "WEEKS",    "MONTHS" ] | The unit of time that corresponds to the **value**. It defines the scale of the time period. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessDuration = Initialize-V2025AccessDuration  -Value 6 `
 -TimeUnit MONTHS
```

- Convert the resource to JSON
```powershell
$AccessDuration | ConvertTo-JSON
```


[[Back to top]](#) 

