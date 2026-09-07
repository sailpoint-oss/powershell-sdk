---
id: source-entitlement-revocation-request-config
title: SourceEntitlementRevocationRequestConfig
pagination_label: SourceEntitlementRevocationRequestConfig
sidebar_label: SourceEntitlementRevocationRequestConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceEntitlementRevocationRequestConfig', 'SourceEntitlementRevocationRequestConfig'] 
slug: /tools/sdk/powershell/sources/models/source-entitlement-revocation-request-config
tags: ['SDK', 'Software Development Kit', 'SourceEntitlementRevocationRequestConfig', 'SourceEntitlementRevocationRequestConfig']
---


# SourceEntitlementRevocationRequestConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalSchemes** | [**[]SourceEntitlementApprovalScheme**](source-entitlement-approval-scheme) | Ordered list of approval steps for the revocation request. Empty when no approval is required. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceEntitlementRevocationRequestConfig = Initialize-SourceEntitlementRevocationRequestConfig  -ApprovalSchemes null
```

- Convert the resource to JSON
```powershell
$SourceEntitlementRevocationRequestConfig | ConvertTo-JSON
```


[[Back to top]](#) 

