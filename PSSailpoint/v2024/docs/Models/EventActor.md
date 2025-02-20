---
id: v2024-event-actor
title: EventActor
pagination_label: EventActor
sidebar_label: EventActor
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EventActor', 'V2024EventActor'] 
slug: /tools/sdk/powershell/v2024/models/event-actor
tags: ['SDK', 'Software Development Kit', 'EventActor', 'V2024EventActor']
---


# EventActor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the actor that generated the event. | [optional] 

## Examples

- Prepare the resource
```powershell
$EventActor = Initialize-PSSailpoint.V2024EventActor  -Name System
$EventActor = @"{  "Name": "System" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToEventActor -Json $EventActor
```


[[Back to top]](#) 

