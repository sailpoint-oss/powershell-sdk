---
id: beta-list-access-model-metadata-attribute429-response
title: ListAccessModelMetadataAttribute429Response
pagination_label: ListAccessModelMetadataAttribute429Response
sidebar_label: ListAccessModelMetadataAttribute429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListAccessModelMetadataAttribute429Response', 'BetaListAccessModelMetadataAttribute429Response'] 
slug: /tools/sdk/powershell/beta/models/list-access-model-metadata-attribute429-response
tags: ['SDK', 'Software Development Kit', 'ListAccessModelMetadataAttribute429Response', 'BetaListAccessModelMetadataAttribute429Response']
---


# ListAccessModelMetadataAttribute429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListAccessModelMetadataAttribute429Response = Initialize-PSSailpoint.BetaListAccessModelMetadataAttribute429Response  -Message  Rate Limit Exceeded 
$ListAccessModelMetadataAttribute429Response = @"{  "Message": "Rate Limit Exceeded  "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToListAccessModelMetadataAttribute429Response -Json $ListAccessModelMetadataAttribute429Response
```


[[Back to top]](#) 

