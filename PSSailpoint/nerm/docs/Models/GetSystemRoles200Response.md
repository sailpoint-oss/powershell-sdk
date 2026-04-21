---
id: nerm-get-system-roles200-response
title: GetSystemRoles200Response
pagination_label: GetSystemRoles200Response
sidebar_label: GetSystemRoles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetSystemRoles200Response', 'NERMGetSystemRoles200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-system-roles200-response
tags: ['SDK', 'Software Development Kit', 'GetSystemRoles200Response', 'NERMGetSystemRoles200Response']
---


# GetSystemRoles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SystemRoles** | [**[]SystemRole**](system-role) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetSystemRoles200Response = Initialize-NERMGetSystemRoles200Response  -SystemRoles null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetSystemRoles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

