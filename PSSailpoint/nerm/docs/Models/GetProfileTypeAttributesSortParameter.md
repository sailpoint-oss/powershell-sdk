---
id: nerm-get-profile-type-attributes-sort-parameter
title: GetProfileTypeAttributesSortParameter
pagination_label: GetProfileTypeAttributesSortParameter
sidebar_label: GetProfileTypeAttributesSortParameter
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetProfileTypeAttributesSortParameter', 'NERMGetProfileTypeAttributesSortParameter'] 
slug: /tools/sdk/powershell/nerm/models/get-profile-type-attributes-sort-parameter
tags: ['SDK', 'Software Development Kit', 'GetProfileTypeAttributesSortParameter', 'NERMGetProfileTypeAttributesSortParameter']
---


# GetProfileTypeAttributesSortParameter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attr** | **String** |  | [optional] 
**Order** |  **Enum** [  "asc",    "desc" ] |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetProfileTypeAttributesSortParameter = Initialize-NERMGetProfileTypeAttributesSortParameter  -Attr sync `
 -Order asc
```

- Convert the resource to JSON
```powershell
$GetProfileTypeAttributesSortParameter | ConvertTo-JSON
```


[[Back to top]](#) 

