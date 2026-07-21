---
id: intel-access-history-certifications-slice
title: IntelAccessHistoryCertificationsSlice
pagination_label: IntelAccessHistoryCertificationsSlice
sidebar_label: IntelAccessHistoryCertificationsSlice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelAccessHistoryCertificationsSlice', 'IntelAccessHistoryCertificationsSlice'] 
slug: /tools/sdk/powershell/intelligence/models/intel-access-history-certifications-slice
tags: ['SDK', 'Software Development Kit', 'IntelAccessHistoryCertificationsSlice', 'IntelAccessHistoryCertificationsSlice']
---


# IntelAccessHistoryCertificationsSlice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | **[]IntelCertificationHistoryEvent** | First page of certification history events for the identity. | [required]
**Next** | **String** | Absolute URL to the next certifications page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelAccessHistoryCertificationsSlice = Initialize-IntelAccessHistoryCertificationsSlice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/intelligence/identities/v1/ef38f94347e94562b5bb8424a56397d8/access-history/certifications?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$IntelAccessHistoryCertificationsSlice | ConvertTo-JSON
```


[[Back to top]](#) 

