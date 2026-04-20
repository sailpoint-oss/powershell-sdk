---
id: nerm-data-records
title: DataRecords
pagination_label: DataRecords
sidebar_label: DataRecords
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DataRecords', 'NERMDataRecords'] 
slug: /tools/sdk/powershell/nerm/models/data-records
tags: ['SDK', 'Software Development Kit', 'DataRecords', 'NERMDataRecords']
---


# DataRecords

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MasterRecordId** | **String** | The id of the master record | [optional] 

## Examples

- Prepare the resource
```powershell
$DataRecords = Initialize-NERMDataRecords  -MasterRecordId 456738c9ba999a0076cf8a9b
```

- Convert the resource to JSON
```powershell
$DataRecords | ConvertTo-JSON
```


[[Back to top]](#) 

