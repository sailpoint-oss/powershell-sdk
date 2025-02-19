---
id: v2024-sod-policy-conflicting-access-criteria
title: SodPolicyConflictingAccessCriteria
pagination_label: SodPolicyConflictingAccessCriteria
sidebar_label: SodPolicyConflictingAccessCriteria
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodPolicyConflictingAccessCriteria', 'V2024SodPolicyConflictingAccessCriteria'] 
slug: /tools/sdk/powershell/v2024/models/sod-policy-conflicting-access-criteria
tags: ['SDK', 'Software Development Kit', 'SodPolicyConflictingAccessCriteria', 'V2024SodPolicyConflictingAccessCriteria']
---


# SodPolicyConflictingAccessCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeftCriteria** | [**AccessCriteria**](access-criteria) |  | [optional] 
**RightCriteria** | [**AccessCriteria**](access-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodPolicyConflictingAccessCriteria = Initialize-PSSailpoint.V2024SodPolicyConflictingAccessCriteria  -LeftCriteria null `
 -RightCriteria null
$SodPolicyConflictingAccessCriteria = @"{  "LeftCriteria": null, "RightCriteria": null }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSodPolicyConflictingAccessCriteria -Json $SodPolicyConflictingAccessCriteria
```


[[Back to top]](#) 

