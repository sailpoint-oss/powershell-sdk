---
id: v2026-create-source-subtype-request
title: CreateSourceSubtypeRequest
pagination_label: CreateSourceSubtypeRequest
sidebar_label: CreateSourceSubtypeRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateSourceSubtypeRequest', 'V2026CreateSourceSubtypeRequest'] 
slug: /tools/sdk/powershell/v2026/models/create-source-subtype-request
tags: ['SDK', 'Software Development Kit', 'CreateSourceSubtypeRequest', 'V2026CreateSourceSubtypeRequest']
---


# CreateSourceSubtypeRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceId** | **String** | ID of the source where subtype is created. | [required]
**TechnicalName** | **String** | Technical name of the subtype. | [required]
**DisplayName** | **String** | Display name of the subtype. | [required]
**Description** | **String** | Description of the subtype. | [required]
**Type** | **String** | Type of the subtype. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateSourceSubtypeRequest = Initialize-V2026CreateSourceSubtypeRequest  -SourceId 6d0458373bec4b4b80460992b76016da `
 -TechnicalName foo `
 -DisplayName Mr Foo `
 -Description fighters `
 -Type MACHINE
```

- Convert the resource to JSON
```powershell
$CreateSourceSubtypeRequest | ConvertTo-JSON
```


[[Back to top]](#) 

