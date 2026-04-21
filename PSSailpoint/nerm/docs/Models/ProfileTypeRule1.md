---
id: nerm-profile-type-rule1
title: ProfileTypeRule1
pagination_label: ProfileTypeRule1
sidebar_label: ProfileTypeRule1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeRule1', 'NERMProfileTypeRule1'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-rule1
tags: ['SDK', 'Software Development Kit', 'ProfileTypeRule1', 'NERMProfileTypeRule1']
---


# ProfileTypeRule1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ProfileTypeRule" ] |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    "!=" ] |  | [required]
**Value** | **String** |  | [required]

## Examples

- Prepare the resource
```powershell
$ProfileTypeRule1 = Initialize-NERMProfileTypeRule1  -Type null `
 -ComparisonOperator null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ProfileTypeRule1 | ConvertTo-JSON
```


[[Back to top]](#) 

