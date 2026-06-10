---
id: sectiondetails
title: Sectiondetails
pagination_label: Sectiondetails
sidebar_label: Sectiondetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Sectiondetails', 'Sectiondetails'] 
slug: /tools/sdk/powershell/workitemsv1/models/sectiondetails
tags: ['SDK', 'Software Development Kit', 'Sectiondetails', 'Sectiondetails']
---


# Sectiondetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Name of the FormItem | [optional] 
**Label** | **String** | Label of the section | [optional] 
**FormItems** | [**[]SystemCollectionsHashtable**](system-collections-hashtable) | List of FormItems. FormItems can be SectionDetails and/or FieldDetails | [optional] 

## Examples

- Prepare the resource
```powershell
$Sectiondetails = Initialize-Sectiondetails  -Name Field1 `
 -Label Section 1 `
 -FormItems []
```

- Convert the resource to JSON
```powershell
$Sectiondetails | ConvertTo-JSON
```


[[Back to top]](#) 

