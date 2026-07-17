---
id: entitlement-request-config2
title: EntitlementRequestConfig2
pagination_label: EntitlementRequestConfig2
sidebar_label: EntitlementRequestConfig2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementRequestConfig2', 'EntitlementRequestConfig2'] 
slug: /tools/sdk/powershell/accessrequests/models/entitlement-request-config2
tags: ['SDK', 'Software Development Kit', 'EntitlementRequestConfig2', 'EntitlementRequestConfig2']
---


# EntitlementRequestConfig2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequestConfig** | [**EntitlementAccessRequestConfig**](entitlement-access-request-config) |  | [optional] 
**RevocationRequestConfig** | [**EntitlementRevocationRequestConfig**](entitlement-revocation-request-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementRequestConfig2 = Initialize-EntitlementRequestConfig2  -AccessRequestConfig null `
 -RevocationRequestConfig null
```

- Convert the resource to JSON
```powershell
$EntitlementRequestConfig2 | ConvertTo-JSON
```


[[Back to top]](#) 

