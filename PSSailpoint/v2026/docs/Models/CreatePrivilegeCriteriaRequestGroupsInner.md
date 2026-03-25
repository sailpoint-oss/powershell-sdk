---
id: v2026-create-privilege-criteria-request-groups-inner
title: CreatePrivilegeCriteriaRequestGroupsInner
pagination_label: CreatePrivilegeCriteriaRequestGroupsInner
sidebar_label: CreatePrivilegeCriteriaRequestGroupsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreatePrivilegeCriteriaRequestGroupsInner', 'V2026CreatePrivilegeCriteriaRequestGroupsInner'] 
slug: /tools/sdk/powershell/v2026/models/create-privilege-criteria-request-groups-inner
tags: ['SDK', 'Software Development Kit', 'CreatePrivilegeCriteriaRequestGroupsInner', 'V2026CreatePrivilegeCriteriaRequestGroupsInner']
---


# CreatePrivilegeCriteriaRequestGroupsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operator** |  **Enum** [  "AND",    "OR" ] | The logical operator to apply between criteria items in the group. | [optional] 
**CriteriaItems** | [**[]CreatePrivilegeCriteriaRequestGroupsInnerCriteriaItemsInner**](create-privilege-criteria-request-groups-inner-criteria-items-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreatePrivilegeCriteriaRequestGroupsInner = Initialize-V2026CreatePrivilegeCriteriaRequestGroupsInner  -Operator AND `
 -CriteriaItems null
```

- Convert the resource to JSON
```powershell
$CreatePrivilegeCriteriaRequestGroupsInner | ConvertTo-JSON
```


[[Back to top]](#) 

