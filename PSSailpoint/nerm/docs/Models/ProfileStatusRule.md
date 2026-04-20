---
id: nerm-profile-status-rule
title: ProfileStatusRule
pagination_label: ProfileStatusRule
sidebar_label: ProfileStatusRule
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileStatusRule', 'NERMProfileStatusRule'] 
slug: /tools/sdk/powershell/nerm/models/profile-status-rule
tags: ['SDK', 'Software Development Kit', 'ProfileStatusRule', 'NERMProfileStatusRule']
---


# ProfileStatusRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Type** |  **Enum** [  "ProfileStatusRule" ] |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    "!=" ] |  | [optional] 
**Value** |  **Enum** [  "Active",    "Inactive",    "Leave of absence",    "Terminated" ] |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileStatusRule = Initialize-NERMProfileStatusRule  -Id null `
 -Uid null `
 -Type null `
 -ComparisonOperator null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ProfileStatusRule | ConvertTo-JSON
```


[[Back to top]](#) 

