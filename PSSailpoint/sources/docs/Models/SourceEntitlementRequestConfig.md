---
id: source-entitlement-request-config
title: SourceEntitlementRequestConfig
pagination_label: SourceEntitlementRequestConfig
sidebar_label: SourceEntitlementRequestConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceEntitlementRequestConfig', 'SourceEntitlementRequestConfig'] 
slug: /tools/sdk/powershell/sources/models/source-entitlement-request-config
tags: ['SDK', 'Software Development Kit', 'SourceEntitlementRequestConfig', 'SourceEntitlementRequestConfig']
---


# SourceEntitlementRequestConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequestConfig** | [**EntitlementAccessRequestConfig**](entitlement-access-request-config) |  | [optional] 
**RevocationRequestConfig** | [**EntitlementRevocationRequestConfig**](entitlement-revocation-request-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceEntitlementRequestConfig = Initialize-SourceEntitlementRequestConfig  -AccessRequestConfig null `
 -RevocationRequestConfig null
```

- Convert the resource to JSON
```powershell
$SourceEntitlementRequestConfig | ConvertTo-JSON
```


[[Back to top]](#) 

