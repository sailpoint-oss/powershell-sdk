---
id: intel-identity-aggregate
title: IntelIdentityAggregate
pagination_label: IntelIdentityAggregate
sidebar_label: IntelIdentityAggregate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityAggregate', 'IntelIdentityAggregate'] 
slug: /tools/sdk/powershell/intelligence/models/intel-identity-aggregate
tags: ['SDK', 'Software Development Kit', 'IntelIdentityAggregate', 'IntelIdentityAggregate']
---


# IntelIdentityAggregate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identity Security Cloud identifier for this identity. | [required]
**Type** |  **Enum** [  "HUMAN" ] | Identity type for the matched record. | [required]
**DisplayName** | **String** | Preferred display name for the identity across administrative experiences. | [optional] 
**Description** | **String** | Optional free-text description assigned to the identity profile when present. | [optional] 
**Subtype** |  **Enum** [  "Employee",    "Non Employee",    "Cannot Determine" ] | NERM classification for the identity. | [optional] 
**Owners** | **String** | Serialized owner reference information when populated by upstream identity services. | [optional] 
**Attributes** | **map[string]AnyType** | Arbitrary SCIM-style attribute bag returned for the identity context view. | [optional] 
**Created** | **System.DateTime** | Timestamp when the identity record was created in Identity Security Cloud. | [optional] 
**Modified** | **System.DateTime** | Timestamp when the identity record was last modified in Identity Security Cloud. | [optional] 
**Alias** | **String** | Primary login or account alias for the identity. | [optional] 
**Email** | **String** | Primary business email address for the identity. | [optional] 
**IdentityStatus** | **String** | Current identity lifecycle status label from Identity Security Cloud. | [optional] 
**IsManager** | **Boolean** | True when the identity is flagged as a people manager in the organization. | [optional] [default to $false]
**Accounts** | [**IntelAccountsSlice**](intel-accounts-slice) | First page of accounts for the identity. | [required]
**PrivilegedAccess** | [**IntelPrivilegedAccessSlice**](intel-privileged-access-slice) | Full privileged access result for the identity. | [required]
**Outliers** | [**IntelOutliersSlice**](intel-outliers-slice) | Rare access slice; omitted when the tenant lacks the IDA-outliers license. | [optional] 
**AccessHistory** | [**IntelAccessHistory**](intel-access-history) | Access-history split into access items and certifications sub-slices. | [required]

## Examples

- Prepare the resource
```powershell
$IntelIdentityAggregate = Initialize-IntelIdentityAggregate  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Type HUMAN `
 -DisplayName Example User `
 -Description Example description. `
 -Subtype Employee `
 -Owners governance-group-001 `
 -Attributes {"department":"Engineering","region":"US"} `
 -Created 2026-05-12T08:00Z `
 -Modified 2026-05-12T09:15:30Z `
 -Alias example.user `
 -Email user@example.com `
 -IdentityStatus ACTIVE `
 -IsManager false `
 -Accounts null `
 -PrivilegedAccess null `
 -Outliers null `
 -AccessHistory null
```

- Convert the resource to JSON
```powershell
$IntelIdentityAggregate | ConvertTo-JSON
```


[[Back to top]](#) 

