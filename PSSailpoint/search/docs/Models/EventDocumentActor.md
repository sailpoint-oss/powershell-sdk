---
id: event-document-actor
title: EventDocumentActor
pagination_label: EventDocumentActor
sidebar_label: EventDocumentActor
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EventDocumentActor', 'EventDocumentActor'] 
slug: /tools/sdk/powershell/search/models/event-document-actor
tags: ['SDK', 'Software Development Kit', 'EventDocumentActor', 'EventDocumentActor']
---


# EventDocumentActor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the actor that generated the event. | [optional] 

## Examples

- Prepare the resource
```powershell
$EventDocumentActor = Initialize-EventDocumentActor  -Name System
```

- Convert the resource to JSON
```powershell
$EventDocumentActor | ConvertTo-JSON
```


[[Back to top]](#) 

