---
id: beta-sod-violation-context-conflicting-access-criteria
title: SodViolationContextConflictingAccessCriteria
pagination_label: SodViolationContextConflictingAccessCriteria
sidebar_label: SodViolationContextConflictingAccessCriteria
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationContextConflictingAccessCriteria', 'BetaSodViolationContextConflictingAccessCriteria'] 
slug: /tools/sdk/powershell/beta/models/sod-violation-context-conflicting-access-criteria
tags: ['SDK', 'Software Development Kit', 'SodViolationContextConflictingAccessCriteria', 'BetaSodViolationContextConflictingAccessCriteria']
---


# SodViolationContextConflictingAccessCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeftCriteria** | [**SodViolationContextConflictingAccessCriteriaLeftCriteria**](sod-violation-context-conflicting-access-criteria-left-criteria) |  | [optional] 
**RightCriteria** | [**SodViolationContextConflictingAccessCriteriaLeftCriteria**](sod-violation-context-conflicting-access-criteria-left-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContextConflictingAccessCriteria = Initialize-BetaSodViolationContextConflictingAccessCriteria  -LeftCriteria null `
 -RightCriteria null
```

- Convert the resource to JSON
```powershell
$SodViolationContextConflictingAccessCriteria | ConvertTo-JSON
```


[[Back to top]](#) 

