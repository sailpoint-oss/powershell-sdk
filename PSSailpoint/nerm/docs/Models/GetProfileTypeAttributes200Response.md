---
id: nerm-get-profile-type-attributes200-response
title: GetProfileTypeAttributes200Response
pagination_label: GetProfileTypeAttributes200Response
sidebar_label: GetProfileTypeAttributes200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetProfileTypeAttributes200Response', 'NERMGetProfileTypeAttributes200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-profile-type-attributes200-response
tags: ['SDK', 'Software Development Kit', 'GetProfileTypeAttributes200Response', 'NERMGetProfileTypeAttributes200Response']
---


# GetProfileTypeAttributes200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypeAttributes** | [**ProfileTypeAttributes**](profile-type-attributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetProfileTypeAttributes200Response = Initialize-NERMGetProfileTypeAttributes200Response  -ProfileTypeAttributes null
```

- Convert the resource to JSON
```powershell
$GetProfileTypeAttributes200Response | ConvertTo-JSON
```


[[Back to top]](#) 

