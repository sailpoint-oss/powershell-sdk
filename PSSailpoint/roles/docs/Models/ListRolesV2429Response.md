---
id: list-roles-v2429-response
title: ListRolesV2429Response
pagination_label: ListRolesV2429Response
sidebar_label: ListRolesV2429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListRolesV2429Response', 'ListRolesV2429Response'] 
slug: /tools/sdk/powershell/roles/models/list-roles-v2429-response
tags: ['SDK', 'Software Development Kit', 'ListRolesV2429Response', 'ListRolesV2429Response']
---


# ListRolesV2429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListRolesV2429Response = Initialize-ListRolesV2429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListRolesV2429Response | ConvertTo-JSON
```


[[Back to top]](#) 

