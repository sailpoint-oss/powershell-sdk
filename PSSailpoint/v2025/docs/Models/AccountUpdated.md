---
id: v2025-account-updated
title: AccountUpdated
pagination_label: AccountUpdated
sidebar_label: AccountUpdated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountUpdated', 'V2025AccountUpdated'] 
slug: /tools/sdk/powershell/v2025/models/account-updated
tags: ['SDK', 'Software Development Kit', 'AccountUpdated', 'V2025AccountUpdated']
---


# AccountUpdated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarEvent** | [**AccountUpdatedEvent**](account-updated-event) |  | [required]
**Source** | [**AccountSourceReference**](account-source-reference) |  | [required]
**Account** | [**AccountV2**](account-v2) |  | [required]
**Identity** | [**IdentityReference1**](identity-reference1) |  | [required]
**AccountChangeTypes** | **[]String** | The types of changes that occurred to the account. | [required]
**SingleValueAttributeChanges** | [**[]AccountUpdatedSingleValueAttributeChangesInner**](account-updated-single-value-attribute-changes-inner) | Details about the single-value attribute changes that occurred to the account. | [required]
**MultiValueAttributeChanges** | [**[]AccountUpdatedMultiValueAttributeChangesInner**](account-updated-multi-value-attribute-changes-inner) | Details about the multi-value attribute changes that occurred to the account. | [required]
**EntitlementChanges** | [**[]AccountUpdatedEntitlementChangesInner**](account-updated-entitlement-changes-inner) | Details about the entitlement changes that occurred to the account. | [required]

## Examples

- Prepare the resource
```powershell
$AccountUpdated = Initialize-V2025AccountUpdated  -VarEvent null `
 -Source null `
 -Account null `
 -Identity null `
 -AccountChangeTypes null `
 -SingleValueAttributeChanges null `
 -MultiValueAttributeChanges null `
 -EntitlementChanges null
```

- Convert the resource to JSON
```powershell
$AccountUpdated | ConvertTo-JSON
```


[[Back to top]](#) 

