---
id: intelidentityaccesshistorybody
title: Intelidentityaccesshistorybody
pagination_label: Intelidentityaccesshistorybody
sidebar_label: Intelidentityaccesshistorybody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentityaccesshistorybody', 'Intelidentityaccesshistorybody'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelidentityaccesshistorybody
tags: ['SDK', 'Software Development Kit', 'Intelidentityaccesshistorybody', 'Intelidentityaccesshistorybody']
---


# Intelidentityaccesshistorybody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | [**[]System.Collections.Hashtable**](system-collections-hashtable) | Each event is relayed from identity-history. Schema varies by event type; consumers should treat unknown fields as opaque using additionalProperties.  | [required]

## Examples

- Prepare the resource
```powershell
$Intelidentityaccesshistorybody = Initialize-Intelidentityaccesshistorybody  -Events [{"id":"evt-001","type":"LOGIN","dateTime":"2024-05-01T12:00:00Z"}]
```

- Convert the resource to JSON
```powershell
$Intelidentityaccesshistorybody | ConvertTo-JSON
```


[[Back to top]](#) 

