---
id: v2025-privilege-criteria-dto
title: PrivilegeCriteriaDTO
pagination_label: PrivilegeCriteriaDTO
sidebar_label: PrivilegeCriteriaDTO
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PrivilegeCriteriaDTO', 'V2025PrivilegeCriteriaDTO'] 
slug: /tools/sdk/powershell/v2025/models/privilege-criteria-dto
tags: ['SDK', 'Software Development Kit', 'PrivilegeCriteriaDTO', 'V2025PrivilegeCriteriaDTO']
---


# PrivilegeCriteriaDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The Id of the criteria. | [optional] 
**SourceId** | **String** | The Id of the source that the criteria is applied to. | [optional] 
**Type** |  **Enum** [  "CUSTOM",    "CONNECTOR",    "SINGLE_LEVEL" ] | The type of criteria. | [optional] 
**Operator** |  **Enum** [  "AND",    "OR" ] | The logical operator to apply between groups. | [optional] 
**Groups** | [**[]PrivilegeCriteriaDTOGroupsInner**](privilege-criteria-dto-groups-inner) |  | [optional] 
**PrivilegeLevel** |  **Enum** [  "HIGH",    "MEDIUM",    "LOW" ] | The privilege level assigned by this criteria. | [optional] 

## Examples

- Prepare the resource
```powershell
$PrivilegeCriteriaDTO = Initialize-V2025PrivilegeCriteriaDTO  -Id 2c9180867817ac4d017817c491119a20 `
 -SourceId c42c45d8d7c04d2da64d215cd8c32f21 `
 -Type CUSTOM `
 -Operator AND `
 -Groups null `
 -PrivilegeLevel HIGH
```

- Convert the resource to JSON
```powershell
$PrivilegeCriteriaDTO | ConvertTo-JSON
```


[[Back to top]](#) 

