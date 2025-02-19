---
id: beta-sod-violation-context-conflicting-access-criteria-left-criteria
title: SodViolationContextConflictingAccessCriteriaLeftCriteria
pagination_label: SodViolationContextConflictingAccessCriteriaLeftCriteria
sidebar_label: SodViolationContextConflictingAccessCriteriaLeftCriteria
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationContextConflictingAccessCriteriaLeftCriteria', 'BetaSodViolationContextConflictingAccessCriteriaLeftCriteria'] 
slug: /tools/sdk/powershell/beta/models/sod-violation-context-conflicting-access-criteria-left-criteria
tags: ['SDK', 'Software Development Kit', 'SodViolationContextConflictingAccessCriteriaLeftCriteria', 'BetaSodViolationContextConflictingAccessCriteriaLeftCriteria']
---


# SodViolationContextConflictingAccessCriteriaLeftCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CriteriaList** | [**[]SodExemptCriteria**](sod-exempt-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContextConflictingAccessCriteriaLeftCriteria = Initialize-PSSailpoint.BetaSodViolationContextConflictingAccessCriteriaLeftCriteria  -CriteriaList null
$SodViolationContextConflictingAccessCriteriaLeftCriteria = @"{  "CriteriaList": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSodViolationContextConflictingAccessCriteriaLeftCriteria -Json $SodViolationContextConflictingAccessCriteriaLeftCriteria
```


[[Back to top]](#) 

