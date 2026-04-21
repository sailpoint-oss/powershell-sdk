---
id: nerm-search-request-audit-events
title: SearchRequestAuditEvents
pagination_label: SearchRequestAuditEvents
sidebar_label: SearchRequestAuditEvents
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchRequestAuditEvents', 'NERMSearchRequestAuditEvents'] 
slug: /tools/sdk/powershell/nerm/models/search-request-audit-events
tags: ['SDK', 'Software Development Kit', 'SearchRequestAuditEvents', 'NERMSearchRequestAuditEvents']
---


# SearchRequestAuditEvents

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Offset** | **Int32** | How many records to skip before pulling records to return. | [optional] 
**SortBy** | **String** | A column that we are sorting these records from. | [optional] 
**Limit** | **Int32** | The limiting count for the amount of records returned. | [optional] 
**Order** |  **Enum** [  "asc",    "desc" ] | Which direction the list should be sorted by | [optional] 
**Filters** | [**AuditEvent**](audit-event) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchRequestAuditEvents = Initialize-NERMSearchRequestAuditEvents  -Offset 100 `
 -SortBy created_at `
 -Limit 10 `
 -Order asc `
 -Filters null
```

- Convert the resource to JSON
```powershell
$SearchRequestAuditEvents | ConvertTo-JSON
```


[[Back to top]](#) 

