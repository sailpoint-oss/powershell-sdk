---
id: v2024-entitlement-request-config
title: EntitlementRequestConfig
pagination_label: EntitlementRequestConfig
sidebar_label: EntitlementRequestConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRequestConfig', 'V2024EntitlementRequestConfig'] 
slug: /tools/sdk/powershell/v2024/models/entitlement-request-config
tags: ['SDK', 'Software Development Kit', 'EntitlementRequestConfig', 'V2024EntitlementRequestConfig']
---


# EntitlementRequestConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequestConfig** | [**EntitlementAccessRequestConfig**](entitlement-access-request-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementRequestConfig = Initialize-PSSailpoint.V2024EntitlementRequestConfig  -AccessRequestConfig null
$EntitlementRequestConfig = @"{  "AccessRequestConfig": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToEntitlementRequestConfig -Json $EntitlementRequestConfig
```


[[Back to top]](#) 

