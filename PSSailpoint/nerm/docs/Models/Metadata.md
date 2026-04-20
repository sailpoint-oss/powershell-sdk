---
id: nerm-metadata
title: Metadata
pagination_label: Metadata
sidebar_label: Metadata
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Metadata', 'NERMMetadata'] 
slug: /tools/sdk/powershell/nerm/models/metadata
tags: ['SDK', 'Software Development Kit', 'Metadata', 'NERMMetadata']
---


# Metadata

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limit** | **Int32** |  | [optional] 
**Offset** | **Int32** |  | [optional] 
**Total** | **Int32** |  | [optional] 
**Next** | **String** |  | [optional] 
**Previous** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Metadata = Initialize-NERMMetadata  -Limit null `
 -Offset null `
 -Total null `
 -Next /endpoint?limit=10&offset=60 `
 -Previous /endpoint?limit=10&offset=40
```

- Convert the resource to JSON
```powershell
$Metadata | ConvertTo-JSON
```


[[Back to top]](#) 

