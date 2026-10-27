---
id: source-subtype-override-request
title: SourceSubtypeOverrideRequest
pagination_label: SourceSubtypeOverrideRequest
sidebar_label: SourceSubtypeOverrideRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceSubtypeOverrideRequest', 'SourceSubtypeOverrideRequest'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/source-subtype-override-request
tags: ['SDK', 'Software Development Kit', 'SourceSubtypeOverrideRequest', 'SourceSubtypeOverrideRequest']
---


# SourceSubtypeOverrideRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceId** | **String** | ID of the source to create the overriding source subtype on. | [required]

## Examples

- Prepare the resource
```powershell
$SourceSubtypeOverrideRequest = Initialize-SourceSubtypeOverrideRequest  -SourceId 6d0458373bec4b4b80460992b76016da
```

- Convert the resource to JSON
```powershell
$SourceSubtypeOverrideRequest | ConvertTo-JSON
```


[[Back to top]](#) 

