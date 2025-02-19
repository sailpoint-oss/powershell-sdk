---
id: sod-violation-context-conflicting-access-criteria-left-criteria
title: SodViolationContextConflictingAccessCriteriaLeftCriteria
pagination_label: SodViolationContextConflictingAccessCriteriaLeftCriteria
sidebar_label: SodViolationContextConflictingAccessCriteriaLeftCriteria
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationContextConflictingAccessCriteriaLeftCriteria', 'SodViolationContextConflictingAccessCriteriaLeftCriteria'] 
slug: /tools/sdk/powershell/v3/models/sod-violation-context-conflicting-access-criteria-left-criteria
tags: ['SDK', 'Software Development Kit', 'SodViolationContextConflictingAccessCriteriaLeftCriteria', 'SodViolationContextConflictingAccessCriteriaLeftCriteria']
---


# SodViolationContextConflictingAccessCriteriaLeftCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CriteriaList** | [**[]SodExemptCriteria**](sod-exempt-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContextConflictingAccessCriteriaLeftCriteria = Initialize-PSSailpoint.V3SodViolationContextConflictingAccessCriteriaLeftCriteria  -CriteriaList null
$SodViolationContextConflictingAccessCriteriaLeftCriteria = @"{  "CriteriaList": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSodViolationContextConflictingAccessCriteriaLeftCriteria -Json $SodViolationContextConflictingAccessCriteriaLeftCriteria
```


[[Back to top]](#) 

