---
id: beta-sod-violation-context2
title: SodViolationContext2
pagination_label: SodViolationContext2
sidebar_label: SodViolationContext2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationContext2', 'BetaSodViolationContext2'] 
slug: /tools/sdk/powershell/beta/models/sod-violation-context2
tags: ['SDK', 'Software Development Kit', 'SodViolationContext2', 'BetaSodViolationContext2']
---


# SodViolationContext2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policy** | [**SodPolicyDto1**](sod-policy-dto1) |  | [optional] 
**ConflictingAccessCriteria** | [**SodViolationContext2ConflictingAccessCriteria**](sod-violation-context2-conflicting-access-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContext2 = Initialize-BetaSodViolationContext2  -Policy null `
 -ConflictingAccessCriteria null
```

- Convert the resource to JSON
```powershell
$SodViolationContext2 | ConvertTo-JSON
```


[[Back to top]](#) 

