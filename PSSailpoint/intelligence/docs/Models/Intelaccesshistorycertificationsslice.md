---
id: intelaccesshistorycertificationsslice
title: Intelaccesshistorycertificationsslice
pagination_label: Intelaccesshistorycertificationsslice
sidebar_label: Intelaccesshistorycertificationsslice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelaccesshistorycertificationsslice', 'Intelaccesshistorycertificationsslice'] 
slug: /tools/sdk/powershell/intelligence/models/intelaccesshistorycertificationsslice
tags: ['SDK', 'Software Development Kit', 'Intelaccesshistorycertificationsslice', 'Intelaccesshistorycertificationsslice']
---


# Intelaccesshistorycertificationsslice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | **[]Intelcertificationhistoryevent** | First page of certification history events for the identity. | [required]
**Next** | **String** | Absolute URL to the next certifications page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelaccesshistorycertificationsslice = Initialize-Intelaccesshistorycertificationsslice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/v2026/intelligence/identities/ef38f94347e94562b5bb8424a56397d8/access-history/certifications?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$Intelaccesshistorycertificationsslice | ConvertTo-JSON
```


[[Back to top]](#) 

