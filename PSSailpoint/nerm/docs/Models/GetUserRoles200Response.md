---
id: nerm-get-user-roles200-response
title: GetUserRoles200Response
pagination_label: GetUserRoles200Response
sidebar_label: GetUserRoles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetUserRoles200Response', 'NERMGetUserRoles200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-user-roles200-response
tags: ['SDK', 'Software Development Kit', 'GetUserRoles200Response', 'NERMGetUserRoles200Response']
---


# GetUserRoles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserRoles** | [**[]UserRole**](user-role) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetUserRoles200Response = Initialize-NERMGetUserRoles200Response  -UserRoles null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetUserRoles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

