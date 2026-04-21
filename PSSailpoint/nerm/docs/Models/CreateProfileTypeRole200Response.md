---
id: nerm-create-profile-type-role200-response
title: CreateProfileTypeRole200Response
pagination_label: CreateProfileTypeRole200Response
sidebar_label: CreateProfileTypeRole200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateProfileTypeRole200Response', 'NERMCreateProfileTypeRole200Response'] 
slug: /tools/sdk/powershell/nerm/models/create-profile-type-role200-response
tags: ['SDK', 'Software Development Kit', 'CreateProfileTypeRole200Response', 'NERMCreateProfileTypeRole200Response']
---


# CreateProfileTypeRole200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeRoles** | [**ProfileTypeRoles**](profile-type-roles) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateProfileTypeRole200Response = Initialize-NERMCreateProfileTypeRole200Response  -ProfileTypeRoles null
```

- Convert the resource to JSON
```powershell
$CreateProfileTypeRole200Response | ConvertTo-JSON
```


[[Back to top]](#) 

