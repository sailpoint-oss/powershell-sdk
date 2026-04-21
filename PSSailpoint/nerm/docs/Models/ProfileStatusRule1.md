---
id: nerm-profile-status-rule1
title: ProfileStatusRule1
pagination_label: ProfileStatusRule1
sidebar_label: ProfileStatusRule1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileStatusRule1', 'NERMProfileStatusRule1'] 
slug: /tools/sdk/powershell/nerm/models/profile-status-rule1
tags: ['SDK', 'Software Development Kit', 'ProfileStatusRule1', 'NERMProfileStatusRule1']
---


# ProfileStatusRule1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "ProfileStatusRule" ] |  | [required]
**ComparisonOperator** |  **Enum** [  "==",    "!=" ] |  | [required]
**Value** |  **Enum** [  "Active",    "Inactive",    "Leave of absence",    "Terminated" ] |  | [required]

## Examples

- Prepare the resource
```powershell
$ProfileStatusRule1 = Initialize-NERMProfileStatusRule1  -Type null `
 -ComparisonOperator null `
 -Value null
```

- Convert the resource to JSON
```powershell
$ProfileStatusRule1 | ConvertTo-JSON
```


[[Back to top]](#) 

