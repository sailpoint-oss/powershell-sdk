---
id: nerm-role
title: Role
pagination_label: Role
sidebar_label: Role
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Role', 'NERMRole'] 
slug: /tools/sdk/powershell/nerm/models/role
tags: ['SDK', 'Software Development Kit', 'Role', 'NERMRole']
---


# Role

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**Name** | **String** |  | [optional] 
**Groups** | **[]String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Role = Initialize-NERMRole  -Id null `
 -Uid sponsors_role `
 -Name Sponsors `
 -Groups null
```

- Convert the resource to JSON
```powershell
$Role | ConvertTo-JSON
```


[[Back to top]](#) 

