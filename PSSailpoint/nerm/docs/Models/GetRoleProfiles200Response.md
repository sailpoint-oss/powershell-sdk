---
id: nerm-get-role-profiles200-response
title: GetRoleProfiles200Response
pagination_label: GetRoleProfiles200Response
sidebar_label: GetRoleProfiles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRoleProfiles200Response', 'NERMGetRoleProfiles200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-role-profiles200-response
tags: ['SDK', 'Software Development Kit', 'GetRoleProfiles200Response', 'NERMGetRoleProfiles200Response']
---


# GetRoleProfiles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleProfiles** | [**[]RoleProfile**](role-profile) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRoleProfiles200Response = Initialize-NERMGetRoleProfiles200Response  -RoleProfiles null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetRoleProfiles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

