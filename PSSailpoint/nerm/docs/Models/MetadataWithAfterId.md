---
id: nerm-metadata-with-after-id
title: MetadataWithAfterId
pagination_label: MetadataWithAfterId
sidebar_label: MetadataWithAfterId
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MetadataWithAfterId', 'NERMMetadataWithAfterId'] 
slug: /tools/sdk/powershell/nerm/models/metadata-with-after-id
tags: ['SDK', 'Software Development Kit', 'MetadataWithAfterId', 'NERMMetadataWithAfterId']
---


# MetadataWithAfterId

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Limit** | **Int32** | The maximum number of records to return in the search | [optional] 
**Offset** | **Int32** | The number of records to skip before starting to return results. | [optional] 
**Total** | **Int32** | The total number of records available matching the search criteria. | [optional] 
**Next** | **String** | The ID of the first record in the next set of results | [optional] 
**Previous** | **String** | The ID of the last record in the previous set of results | [optional] 
**AfterId** | **String** | The ID from which the search will start, ignoring all records before it. | [optional] 

## Examples

- Prepare the resource
```powershell
$MetadataWithAfterId = Initialize-NERMMetadataWithAfterId  -Limit null `
 -Offset null `
 -Total null `
 -Next /endpoint?limit=10&offset=60 `
 -Previous /endpoint?limit=10&offset=40 `
 -AfterId 4eaa719f-4312-4c5b-9264-d0eb04d4a02a
```

- Convert the resource to JSON
```powershell
$MetadataWithAfterId | ConvertTo-JSON
```


[[Back to top]](#) 

