---
id: v2025-privilege-criteria-dto-groups-inner
title: PrivilegeCriteriaDTOGroupsInner
pagination_label: PrivilegeCriteriaDTOGroupsInner
sidebar_label: PrivilegeCriteriaDTOGroupsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PrivilegeCriteriaDTOGroupsInner', 'V2025PrivilegeCriteriaDTOGroupsInner'] 
slug: /tools/sdk/powershell/v2025/models/privilege-criteria-dto-groups-inner
tags: ['SDK', 'Software Development Kit', 'PrivilegeCriteriaDTOGroupsInner', 'V2025PrivilegeCriteriaDTOGroupsInner']
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
$PrivilegeCriteriaDTOGroupsInner = Initialize-V2025PrivilegeCriteriaDTOGroupsInner  -Operator AND `
 -CriteriaItems null
```

- Convert the resource to JSON
```powershell
$PrivilegeCriteriaDTOGroupsInner | ConvertTo-JSON
```


[[Back to top]](#) 

