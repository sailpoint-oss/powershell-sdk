---
id: v2026-role-list-filter-dto
title: RoleListFilterDTO
pagination_label: RoleListFilterDTO
sidebar_label: RoleListFilterDTO
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleListFilterDTO', 'V2026RoleListFilterDTO'] 
slug: /tools/sdk/powershell/v2026/models/role-list-filter-dto
tags: ['SDK', 'Software Development Kit', 'RoleListFilterDTO', 'V2026RoleListFilterDTO']
---


# RoleListFilterDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filters** | **String** | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results) Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq* | [optional] 
**AmmKeyValues** | [**[]RoleListFilterDTOAmmKeyValuesInner**](role-list-filter-dto-amm-key-values-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleListFilterDTO = Initialize-V2026RoleListFilterDTO  -Filters dimensional eq false `
 -AmmKeyValues [{attribute=iscFederalClassifications, values=[secret]}]
```

- Convert the resource to JSON
```powershell
$RoleListFilterDTO | ConvertTo-JSON
```


[[Back to top]](#) 

