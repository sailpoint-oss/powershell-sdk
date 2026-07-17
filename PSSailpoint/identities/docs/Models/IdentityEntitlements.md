---
id: identity-entitlements
title: IdentityEntitlements
pagination_label: IdentityEntitlements
sidebar_label: IdentityEntitlements
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityEntitlements', 'IdentityEntitlements'] 
slug: /tools/sdk/powershell/identities/models/identity-entitlements
tags: ['SDK', 'Software Development Kit', 'IdentityEntitlements', 'IdentityEntitlements']
---


# IdentityEntitlements

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectRef** | [**TaggedObjectDto**](tagged-object-dto) |  | [optional] 
**Tags** | **[]String** | Labels to be applied to object. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityEntitlements = Initialize-IdentityEntitlements  -ObjectRef null `
 -Tags ["BU_FINANCE","PCI"]
```

- Convert the resource to JSON
```powershell
$IdentityEntitlements | ConvertTo-JSON
```


[[Back to top]](#) 

