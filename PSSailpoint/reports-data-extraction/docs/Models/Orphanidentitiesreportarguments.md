---
id: orphanidentitiesreportarguments
title: Orphanidentitiesreportarguments
pagination_label: Orphanidentitiesreportarguments
sidebar_label: Orphanidentitiesreportarguments
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Orphanidentitiesreportarguments', 'Orphanidentitiesreportarguments'] 
slug: /tools/sdk/powershell/reportsdataextraction/models/orphanidentitiesreportarguments
tags: ['SDK', 'Software Development Kit', 'Orphanidentitiesreportarguments', 'Orphanidentitiesreportarguments']
---


# Orphanidentitiesreportarguments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SelectedFormats** | **[]String** | Output report file formats. These are formats for calling GET endpoint as query parameter 'fileFormat'.  In case report won't have this argument there will be ['CSV', 'PDF'] as default. | [optional] 

## Examples

- Prepare the resource
```powershell
$Orphanidentitiesreportarguments = Initialize-Orphanidentitiesreportarguments  -SelectedFormats ["CSV"]
```

- Convert the resource to JSON
```powershell
$Orphanidentitiesreportarguments | ConvertTo-JSON
```


[[Back to top]](#) 

