---
id: dimension-membership-selector
title: DimensionMembershipSelector
pagination_label: DimensionMembershipSelector
sidebar_label: DimensionMembershipSelector
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DimensionMembershipSelector', 'DimensionMembershipSelector'] 
slug: /tools/sdk/powershell/dimensions/models/dimension-membership-selector
tags: ['SDK', 'Software Development Kit', 'DimensionMembershipSelector', 'DimensionMembershipSelector']
---


# DimensionMembershipSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DimensionMembershipSelectorType** |  | [optional] 
**Criteria** | [**DimensionCriteriaLevel1**](dimension-criteria-level1) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DimensionMembershipSelector = Initialize-DimensionMembershipSelector  -Type null `
 -Criteria null
```

- Convert the resource to JSON
```powershell
$DimensionMembershipSelector | ConvertTo-JSON
```


[[Back to top]](#) 

