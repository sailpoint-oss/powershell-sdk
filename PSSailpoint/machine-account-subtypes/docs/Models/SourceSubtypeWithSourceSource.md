---
id: source-subtype-with-source-source
title: SourceSubtypeWithSourceSource
pagination_label: SourceSubtypeWithSourceSource
sidebar_label: SourceSubtypeWithSourceSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceSubtypeWithSourceSource', 'SourceSubtypeWithSourceSource'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/source-subtype-with-source-source
tags: ['SDK', 'Software Development Kit', 'SourceSubtypeWithSourceSource', 'SourceSubtypeWithSourceSource']
---


# SourceSubtypeWithSourceSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "SOURCE" ] | Type of the reference object. | [optional] 
**Id** | **String** | Unique identifier for the source. | [optional] 
**Name** | **String** | Name of the source. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceSubtypeWithSourceSource = Initialize-SourceSubtypeWithSourceSource  -Type SOURCE `
 -Id 6d0458373bec4b4b80460992b76016da `
 -Name Test Source
```

- Convert the resource to JSON
```powershell
$SourceSubtypeWithSourceSource | ConvertTo-JSON
```


[[Back to top]](#) 

