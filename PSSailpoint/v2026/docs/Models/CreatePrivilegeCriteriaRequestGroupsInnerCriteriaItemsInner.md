---
id: v2026-create-privilege-criteria-request-groups-inner-criteria-items-inner
title: CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner
pagination_label: CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner
sidebar_label: CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner', 'V2026CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner'] 
slug: /tools/sdk/powershell/v2026/models/create-privilege-criteria-request-groups-inner-criteria-items-inner
tags: ['SDK', 'Software Development Kit', 'CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner', 'V2026CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner']
---


# CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TargetType** |  **Enum** [  "group" ] | The target type of the criteria item. | [optional] 
**Operator** |  **Enum** [  "IN",    "EQUALS",    "NOT_EQUALS",    "CONTAINS",    "DOES_NOT_CONTAIN",    "STARTS_WITH",    "ENDS_WITH" ] |  | [optional] 
**Values** | **[]String** | The values to evaluate the property against. | [optional] 
**IgnoreCase** | **Boolean** | Whether to ignore case when evaluating the property against the values. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner = Initialize-V2026CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner  -TargetType group `
 -Operator null `
 -Values [admin, superuser] `
 -IgnoreCase true
```

- Convert the resource to JSON
```powershell
$CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner | ConvertTo-JSON
```


[[Back to top]](#) 

