---
id: intel-accounts-slice
title: IntelAccountsSlice
pagination_label: IntelAccountsSlice
sidebar_label: IntelAccountsSlice
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelAccountsSlice', 'IntelAccountsSlice'] 
slug: /tools/sdk/powershell/intelligence/models/intel-accounts-slice
tags: ['SDK', 'Software Development Kit', 'IntelAccountsSlice', 'IntelAccountsSlice']
---


# IntelAccountsSlice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]IntelAccessAccountWire**](intel-access-account-wire) | First page of accounts for the identity. | [required]
**Next** | **String** | Absolute URL to the next accounts page; present only when more results exist. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelAccountsSlice = Initialize-IntelAccountsSlice  -Items null `
 -Next https://tenant.example.api.cloud.sailpoint.com/intelligence/identities/v1/ef38f94347e94562b5bb8424a56397d8/accounts?limit=10&offset=10
```

- Convert the resource to JSON
```powershell
$IntelAccountsSlice | ConvertTo-JSON
```


[[Back to top]](#) 

