---
id: request-on-behalf-of-config2
title: RequestOnBehalfOfConfig2
pagination_label: RequestOnBehalfOfConfig2
sidebar_label: RequestOnBehalfOfConfig2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RequestOnBehalfOfConfig2', 'RequestOnBehalfOfConfig2'] 
slug: /tools/sdk/powershell/accessrequests/models/request-on-behalf-of-config2
tags: ['SDK', 'Software Development Kit', 'RequestOnBehalfOfConfig2', 'RequestOnBehalfOfConfig2']
---


# RequestOnBehalfOfConfig2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AllowRequestOnBehalfOfAnyoneByAnyone** | **Boolean** | If this is true, anyone can request access for anyone. | [optional] [default to $false]
**AllowRequestOnBehalfOfEmployeeByManager** | **Boolean** | If this is true, a manager can request access for his or her direct reports. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$RequestOnBehalfOfConfig2 = Initialize-RequestOnBehalfOfConfig2  -AllowRequestOnBehalfOfAnyoneByAnyone true `
 -AllowRequestOnBehalfOfEmployeeByManager true
```

- Convert the resource to JSON
```powershell
$RequestOnBehalfOfConfig2 | ConvertTo-JSON
```


[[Back to top]](#) 

