---
id: nerm-get-roles200-response
title: GetRoles200Response
pagination_label: GetRoles200Response
sidebar_label: GetRoles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRoles200Response', 'NERMGetRoles200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-roles200-response
tags: ['SDK', 'Software Development Kit', 'GetRoles200Response', 'NERMGetRoles200Response']
---


# GetRoles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Roles** | [**[]Role**](role) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRoles200Response = Initialize-NERMGetRoles200Response  -Roles null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetRoles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

