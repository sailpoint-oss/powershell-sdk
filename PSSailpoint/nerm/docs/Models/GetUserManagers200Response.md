---
id: nerm-get-user-managers200-response
title: GetUserManagers200Response
pagination_label: GetUserManagers200Response
sidebar_label: GetUserManagers200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetUserManagers200Response', 'NERMGetUserManagers200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-user-managers200-response
tags: ['SDK', 'Software Development Kit', 'GetUserManagers200Response', 'NERMGetUserManagers200Response']
---


# GetUserManagers200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserManagers** | [**[]UserManager**](user-manager) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetUserManagers200Response = Initialize-NERMGetUserManagers200Response  -UserManagers null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetUserManagers200Response | ConvertTo-JSON
```


[[Back to top]](#) 

