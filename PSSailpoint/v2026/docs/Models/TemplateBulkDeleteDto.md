---
id: v2026-template-bulk-delete-dto
title: TemplateBulkDeleteDto
pagination_label: TemplateBulkDeleteDto
sidebar_label: TemplateBulkDeleteDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TemplateBulkDeleteDto', 'V2026TemplateBulkDeleteDto'] 
slug: /tools/sdk/powershell/v2026/models/template-bulk-delete-dto
tags: ['SDK', 'Software Development Kit', 'TemplateBulkDeleteDto', 'V2026TemplateBulkDeleteDto']
---


# TemplateBulkDeleteDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Key** | **String** | The template key to delete | [required]
**Medium** |  **Enum** [  "EMAIL",    "SLACK",    "TEAMS" ] | The notification medium (EMAIL, SLACK, or TEAMS) | [optional] 
**Locale** | **String** | The locale for the message text, a BCP 47 language tag. | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateBulkDeleteDto = Initialize-V2026TemplateBulkDeleteDto  -Key cloud_manual_work_item_summary `
 -Medium EMAIL `
 -Locale en
```

- Convert the resource to JSON
```powershell
$TemplateBulkDeleteDto | ConvertTo-JSON
```


[[Back to top]](#) 

