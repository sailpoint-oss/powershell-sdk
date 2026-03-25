---
id: v2026-privilege-criteria-dto-groups-inner
title: PrivilegeCriteriaDTOGroupsInner
pagination_label: PrivilegeCriteriaDTOGroupsInner
sidebar_label: PrivilegeCriteriaDTOGroupsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PrivilegeCriteriaDTOGroupsInner', 'V2026PrivilegeCriteriaDTOGroupsInner'] 
slug: /tools/sdk/powershell/v2026/models/privilege-criteria-dto-groups-inner
tags: ['SDK', 'Software Development Kit', 'PrivilegeCriteriaDTOGroupsInner', 'V2026PrivilegeCriteriaDTOGroupsInner']
---


# PrivilegeCriteriaDTOGroupsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** |  **Enum** [  "AND",    "OR" ] | The logical operator to apply between criteria items in the group. | [optional] 
**CriteriaItems** | [**[]PrivilegeCriteriaDTOGroupsInnerCriteriaItemsInner**](privilege-criteria-dto-groups-inner-criteria-items-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PrivilegeCriteriaDTOGroupsInner = Initialize-V2026PrivilegeCriteriaDTOGroupsInner  -Operator AND `
 -CriteriaItems null
```

- Convert the resource to JSON
```powershell
$PrivilegeCriteriaDTOGroupsInner | ConvertTo-JSON
```


[[Back to top]](#) 

