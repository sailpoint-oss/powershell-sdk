---
id: beta-sod-violation-context2-conflicting-access-criteria
title: SodViolationContext2ConflictingAccessCriteria
pagination_label: SodViolationContext2ConflictingAccessCriteria
sidebar_label: SodViolationContext2ConflictingAccessCriteria
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationContext2ConflictingAccessCriteria', 'BetaSodViolationContext2ConflictingAccessCriteria'] 
slug: /tools/sdk/powershell/beta/models/sod-violation-context2-conflicting-access-criteria
tags: ['SDK', 'Software Development Kit', 'SodViolationContext2ConflictingAccessCriteria', 'BetaSodViolationContext2ConflictingAccessCriteria']
---


# SodViolationContext2ConflictingAccessCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeftCriteria** | [**SodViolationContext2ConflictingAccessCriteriaLeftCriteria**](sod-violation-context2-conflicting-access-criteria-left-criteria) |  | [optional] 
**RightCriteria** | [**SodViolationContext2ConflictingAccessCriteriaLeftCriteria**](sod-violation-context2-conflicting-access-criteria-left-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContext2ConflictingAccessCriteria = Initialize-BetaSodViolationContext2ConflictingAccessCriteria  -LeftCriteria null `
 -RightCriteria null
```

- Convert the resource to JSON
```powershell
$SodViolationContext2ConflictingAccessCriteria | ConvertTo-JSON
```


[[Back to top]](#) 

