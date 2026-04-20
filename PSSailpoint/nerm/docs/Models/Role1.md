---
id: nerm-role1
title: Role1
pagination_label: Role1
sidebar_label: Role1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Role1', 'NERMRole1'] 
slug: /tools/sdk/powershell/nerm/models/role1
tags: ['SDK', 'Software Development Kit', 'Role1', 'NERMRole1']
---


# Role1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** |  | [optional] 
**Type** |  **Enum** [  "NeprofileRole",    "NeaccessRole" ] |  | [optional] 
**Name** | **String** |  | [optional] 
**Groups** | **[]String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Role1 = Initialize-NERMRole1  -Uid sponsors_role `
 -Type null `
 -Name Sponsors `
 -Groups null
```

- Convert the resource to JSON
```powershell
$Role1 | ConvertTo-JSON
```


[[Back to top]](#) 

