---
id: v2026-base-segment
title: BaseSegment
pagination_label: BaseSegment
sidebar_label: BaseSegment
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BaseSegment', 'V2026BaseSegment'] 
slug: /tools/sdk/powershell/v2026/models/base-segment
tags: ['SDK', 'Software Development Kit', 'BaseSegment', 'V2026BaseSegment']
---


# BaseSegment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Segment's unique ID. | [optional] 
**Name** | **String** | Segment's display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseSegment = Initialize-V2026BaseSegment  -Id b009b6e3-b56d-41d9-8735-cb532ea0b017 `
 -Name Test Segment
```

- Convert the resource to JSON
```powershell
$BaseSegment | ConvertTo-JSON
```


[[Back to top]](#) 

