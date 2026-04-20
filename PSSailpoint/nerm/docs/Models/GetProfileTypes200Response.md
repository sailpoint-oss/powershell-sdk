---
id: nerm-get-profile-types200-response
title: GetProfileTypes200Response
pagination_label: GetProfileTypes200Response
sidebar_label: GetProfileTypes200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetProfileTypes200Response', 'NERMGetProfileTypes200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-profile-types200-response
tags: ['SDK', 'Software Development Kit', 'GetProfileTypes200Response', 'NERMGetProfileTypes200Response']
---


# GetProfileTypes200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProfileTypes** | [**[]ProfileType**](profile-type) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetProfileTypes200Response = Initialize-NERMGetProfileTypes200Response  -ProfileTypes null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetProfileTypes200Response | ConvertTo-JSON
```


[[Back to top]](#) 

