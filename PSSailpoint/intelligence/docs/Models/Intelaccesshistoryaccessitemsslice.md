---
id: intelaccesshistoryaccessitemsslice
title: Intelaccesshistoryaccessitemsslice
pagination_label: Intelaccesshistoryaccessitemsslice
sidebar_label: Intelaccesshistoryaccessitemsslice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelaccesshistoryaccessitemsslice', 'Intelaccesshistoryaccessitemsslice'] 
slug: /tools/sdk/powershell/intelligence/models/intelaccesshistoryaccessitemsslice
tags: ['SDK', 'Software Development Kit', 'Intelaccesshistoryaccessitemsslice', 'Intelaccesshistoryaccessitemsslice']
---


# Intelaccesshistoryaccessitemsslice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | **[]Intelaccessitemhistoryevent** | First page of access-item history events for the identity. | [required]
**Next** | **String** | Absolute URL to the next access-items page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelaccesshistoryaccessitemsslice = Initialize-Intelaccesshistoryaccessitemsslice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/v2026/intelligence/identities/ef38f94347e94562b5bb8424a56397d8/access-history/access-items?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$Intelaccesshistoryaccessitemsslice | ConvertTo-JSON
```


[[Back to top]](#) 

