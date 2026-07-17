---
id: event-document-target
title: EventDocumentTarget
pagination_label: EventDocumentTarget
sidebar_label: EventDocumentTarget
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EventDocumentTarget', 'EventDocumentTarget'] 
slug: /tools/sdk/powershell/search/models/event-document-target
tags: ['SDK', 'Software Development Kit', 'EventDocumentTarget', 'EventDocumentTarget']
---


# EventDocumentTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the target, or recipient, of the event. | [optional] 

## Examples

- Prepare the resource
```powershell
$EventDocumentTarget = Initialize-EventDocumentTarget  -Name Carol.Adams
```

- Convert the resource to JSON
```powershell
$EventDocumentTarget | ConvertTo-JSON
```


[[Back to top]](#) 

