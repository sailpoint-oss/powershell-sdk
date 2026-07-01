---
id: intelaccountsslice
title: Intelaccountsslice
pagination_label: Intelaccountsslice
sidebar_label: Intelaccountsslice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelaccountsslice', 'Intelaccountsslice'] 
slug: /tools/sdk/powershell/intelligence/models/intelaccountsslice
tags: ['SDK', 'Software Development Kit', 'Intelaccountsslice', 'Intelaccountsslice']
---


# Intelaccountsslice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]Intelaccessaccountwire**](intelaccessaccountwire) | First page of accounts for the identity. | [required]
**Next** | **String** | Absolute URL to the next accounts page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelaccountsslice = Initialize-Intelaccountsslice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/v2026/intelligence/identities/ef38f94347e94562b5bb8424a56397d8/accounts?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$Intelaccountsslice | ConvertTo-JSON
```


[[Back to top]](#) 

