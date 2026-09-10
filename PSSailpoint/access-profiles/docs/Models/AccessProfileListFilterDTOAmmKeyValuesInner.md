---
id: access-profile-list-filter-dto-amm-key-values-inner
title: AccessProfileListFilterDTOAmmKeyValuesInner
pagination_label: AccessProfileListFilterDTOAmmKeyValuesInner
sidebar_label: AccessProfileListFilterDTOAmmKeyValuesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileListFilterDTOAmmKeyValuesInner', 'AccessProfileListFilterDTOAmmKeyValuesInner'] 
slug: /tools/sdk/powershell/accessprofiles/models/access-profile-list-filter-dto-amm-key-values-inner
tags: ['SDK', 'Software Development Kit', 'AccessProfileListFilterDTOAmmKeyValuesInner', 'AccessProfileListFilterDTOAmmKeyValuesInner']
---


# AccessProfileListFilterDTOAmmKeyValuesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The technical name of the metadata attribute. A blank or missing value is rejected with a 400 error. | [optional] 
**Values** | **[]String** | The attribute values used to filter access profiles. If the list is empty, results are filtered by attribute key only. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileListFilterDTOAmmKeyValuesInner = Initialize-AccessProfileListFilterDTOAmmKeyValuesInner  -Attribute iscFederalClassifications `
 -Values ["secret"]
```

- Convert the resource to JSON
```powershell
$AccessProfileListFilterDTOAmmKeyValuesInner | ConvertTo-JSON
```


[[Back to top]](#) 

