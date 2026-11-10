---
id: list-roles-v2401-response
title: ListRolesV2401Response
pagination_label: ListRolesV2401Response
sidebar_label: ListRolesV2401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListRolesV2401Response', 'ListRolesV2401Response'] 
slug: /tools/sdk/powershell/roles/models/list-roles-v2401-response
tags: ['SDK', 'Software Development Kit', 'ListRolesV2401Response', 'ListRolesV2401Response']
---


# ListRolesV2401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListRolesV2401Response = Initialize-ListRolesV2401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListRolesV2401Response | ConvertTo-JSON
```


[[Back to top]](#) 

