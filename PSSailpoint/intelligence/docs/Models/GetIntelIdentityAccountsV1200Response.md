---
id: get-intel-identity-accounts-v1200-response
title: GetIntelIdentityAccountsV1200Response
pagination_label: GetIntelIdentityAccountsV1200Response
sidebar_label: GetIntelIdentityAccountsV1200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetIntelIdentityAccountsV1200Response', 'GetIntelIdentityAccountsV1200Response'] 
slug: /tools/sdk/powershell/intelligence/models/get-intel-identity-accounts-v1200-response
tags: ['SDK', 'Software Development Kit', 'GetIntelIdentityAccountsV1200Response', 'GetIntelIdentityAccountsV1200Response']
---


# GetIntelIdentityAccountsV1200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Items** | [**[]IntelAccessAccountWire**](intel-access-account-wire) | First page of accounts for the identity. | [required]
**TotalCount** | **Int32** | Total number of accounts for this identity; omitted when `items` is empty. | [optional] 
**Next** | **String** | Absolute URL to the next accounts page; present when totalCount exceeds the items returned on this page. | [optional] 

## Examples

- Prepare the resource
```powershell
$GetIntelIdentityAccountsV1200Response = Initialize-GetIntelIdentityAccountsV1200Response  -Items null `
 -TotalCount 42 `
 -Next https://tenant.example.api.cloud.sailpoint.com/intelligence/identities/v1/ef38f94347e94562b5bb8424a56397d8/accounts?limit=10&offset=10&count=true
```

- Convert the resource to JSON
```powershell
$GetIntelIdentityAccountsV1200Response | ConvertTo-JSON
```


[[Back to top]](#) 

