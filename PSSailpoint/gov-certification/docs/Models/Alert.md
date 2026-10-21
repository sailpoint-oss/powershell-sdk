---
id: alert
title: Alert
pagination_label: Alert
sidebar_label: Alert
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Alert', 'Alert'] 
slug: /tools/sdk/powershell/govcertification/models/alert
tags: ['SDK', 'Software Development Kit', 'Alert', 'Alert']
---


# Alert

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** |  **Enum** [  "ERROR",    "WARN",    "INFO" ] | Denotes the level of the message | [optional] 
**Localizations** | [**[]ErrorMessageDto**](error-message-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Alert = Initialize-Alert  -Level ERROR `
 -Localizations null
```

- Convert the resource to JSON
```powershell
$Alert | ConvertTo-JSON
```


[[Back to top]](#) 

