---
id: intelaccesshistory
title: Intelaccesshistory
pagination_label: Intelaccesshistory
sidebar_label: Intelaccesshistory
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelaccesshistory', 'Intelaccesshistory'] 
slug: /tools/sdk/powershell/intelligence/models/intelaccesshistory
tags: ['SDK', 'Software Development Kit', 'Intelaccesshistory', 'Intelaccesshistory']
---


# Intelaccesshistory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessItems** | [**Intelaccesshistoryaccessitemsslice**](intelaccesshistoryaccessitemsslice) | First page of access-item history events for the identity. | [required]
**Certifications** | [**Intelaccesshistorycertificationsslice**](intelaccesshistorycertificationsslice) | First page of certification history events for the identity. | [required]

## Examples

- Prepare the resource
```powershell
$Intelaccesshistory = Initialize-Intelaccesshistory  -AccessItems null `
 -Certifications null
```

- Convert the resource to JSON
```powershell
$Intelaccesshistory | ConvertTo-JSON
```


[[Back to top]](#) 

