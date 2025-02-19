---
id: sod-violation-context
title: SodViolationContext
pagination_label: SodViolationContext
sidebar_label: SodViolationContext
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationContext', 'SodViolationContext'] 
slug: /tools/sdk/powershell/v3/models/sod-violation-context
tags: ['SDK', 'Software Development Kit', 'SodViolationContext', 'SodViolationContext']
---


# SodViolationContext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policy** | [**SodPolicyDto**](sod-policy-dto) |  | [optional] 
**ConflictingAccessCriteria** | [**SodViolationContextConflictingAccessCriteria**](sod-violation-context-conflicting-access-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContext = Initialize-PSSailpoint.V3SodViolationContext  -Policy null `
 -ConflictingAccessCriteria null
$SodViolationContext = @"{  "Policy": null, "ConflictingAccessCriteria": null }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSodViolationContext -Json $SodViolationContext
```


[[Back to top]](#) 

