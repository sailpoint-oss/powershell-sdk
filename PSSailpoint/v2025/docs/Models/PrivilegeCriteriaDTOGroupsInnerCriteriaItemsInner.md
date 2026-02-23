---
id: v2025-privilege-criteria-dto-groups-inner-criteria-items-inner
title: PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner
pagination_label: PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner
sidebar_label: PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner', 'V2025PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner'] 
slug: /tools/sdk/powershell/v2025/models/privilege-criteria-dto-groups-inner-criteria-items-inner
tags: ['SDK', 'Software Development Kit', 'PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner', 'V2025PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner']
---


# PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetType** |  **Enum** [  "group" ] | The target type for the criteria item. | [optional] 
**Operator** |  **Enum** [  "IN",    "EQUALS",    "NOT_EQUALS",    "CONTAINS",    "DOES_NOT_CONTAIN",    "STARTS_WITH",    "ENDS_WITH" ] | The operator to apply to the property and values. | [optional] 
**Property** | **String** |  | [optional] 
**Values** | **[]String** | The values to evaluate the property against. | [optional] 
**IgnoreCase** | **Boolean** | Whether to ignore case when evaluating the property against the values. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner = Initialize-V2025PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner  -TargetType group `
 -Operator IN `
 -Property null `
 -Values [admin, superuser] `
 -IgnoreCase true
```

- Convert the resource to JSON
```powershell
$PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner | ConvertTo-JSON
```


[[Back to top]](#) 

