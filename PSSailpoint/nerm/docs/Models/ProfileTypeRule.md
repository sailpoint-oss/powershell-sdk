---
id: nerm-profile-type-rule
title: ProfileTypeRule
pagination_label: ProfileTypeRule
sidebar_label: ProfileTypeRule
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileTypeRule', 'NERMProfileTypeRule'] 
slug: /tools/sdk/powershell/nerm/models/profile-type-rule
tags: ['SDK', 'Software Development Kit', 'ProfileTypeRule', 'NERMProfileTypeRule']
---


# ProfileTypeRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Type** |  **Enum** [  "ProfileTypeRule" ] |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    "!=" ] |  | [optional] 
**Value** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileTypeRule = Initialize-NERMProfileTypeRule  -Id null `
 -Uid null `
 -Type null `
 -ComparisonOperator null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ProfileTypeRule | ConvertTo-JSON
```


[[Back to top]](#) 

