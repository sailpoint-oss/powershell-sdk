---
id: intelblastradiussummary
title: Intelblastradiussummary
pagination_label: Intelblastradiussummary
sidebar_label: Intelblastradiussummary
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelblastradiussummary', 'Intelblastradiussummary'] 
slug: /tools/sdk/powershell/intelligence/models/intelblastradiussummary
tags: ['SDK', 'Software Development Kit', 'Intelblastradiussummary', 'Intelblastradiussummary']
---


# Intelblastradiussummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ImpactedSources** | **[]String** | Source systems that may be impacted if compromised. | [required]
**ImpactedAccounts** | **Int32** | Linked machine accounts that may be impacted if compromised. | [required]
**ImpactedHumans** | **Int32** | Unique owners and authorized humans potentially impacted if compromised. | [required]
**HasEntitlements** | **Boolean** | Whether this NHI holds entitlements included in summary. | [optional] [default to $false]
**Environments** | **[]String** | Environment labels for impacted access in this summary. | [optional] 
**AccessTypes** | **[]String** | Access type labels for impacted access in this summary. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelblastradiussummary = Initialize-Intelblastradiussummary  -ImpactedSources ["Example AWS Source"] `
 -ImpactedAccounts 1 `
 -ImpactedHumans 1 `
 -HasEntitlements true `
 -Environments ["production"] `
 -AccessTypes ["entitlement"]
```

- Convert the resource to JSON
```powershell
$Intelblastradiussummary | ConvertTo-JSON
```


[[Back to top]](#) 

