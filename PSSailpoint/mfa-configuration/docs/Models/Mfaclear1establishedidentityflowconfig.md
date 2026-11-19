---
id: mfaclear1establishedidentityflowconfig
title: Mfaclear1establishedidentityflowconfig
pagination_label: Mfaclear1establishedidentityflowconfig
sidebar_label: Mfaclear1establishedidentityflowconfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Mfaclear1establishedidentityflowconfig', 'Mfaclear1establishedidentityflowconfig'] 
slug: /tools/sdk/powershell/mfaconfiguration/models/mfaclear1establishedidentityflowconfig
tags: ['SDK', 'Software Development Kit', 'Mfaclear1establishedidentityflowconfig', 'Mfaclear1establishedidentityflowconfig']
---


# Mfaclear1establishedidentityflowconfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Enabled** | **Boolean** | If the established identity flow is enabled for the CLEAR1 MFA method. | [optional] [default to $false]
**ProjectId** | **String** | The ID of the CLEAR1 project used for the established identity flow. This field is required if `enabled` is *true*. It may be null if `enabled` is *false*. | [optional] 
**UserProfileMatchingAttributes** | [**Mfaclear1userprofilematchingattributes**](mfaclear1userprofilematchingattributes) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Mfaclear1establishedidentityflowconfig = Initialize-Mfaclear1establishedidentityflowconfig  -Enabled true `
 -ProjectId null `
 -UserProfileMatchingAttributes null
```

- Convert the resource to JSON
```powershell
$Mfaclear1establishedidentityflowconfig | ConvertTo-JSON
```


[[Back to top]](#) 

