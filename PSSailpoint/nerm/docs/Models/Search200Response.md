---
id: nerm-search200-response
title: Search200Response
pagination_label: Search200Response
sidebar_label: Search200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Search200Response', 'NERMSearch200Response'] 
slug: /tools/sdk/powershell/nerm/models/search200-response
tags: ['SDK', 'Software Development Kit', 'Search200Response', 'NERMSearch200Response']
---


# Search200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuditEvents** | [**[]AuditEvent**](audit-event) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Search200Response = Initialize-NERMSearch200Response  -AuditEvents null
```

- Convert the resource to JSON
```powershell
$Search200Response | ConvertTo-JSON
```


[[Back to top]](#) 

