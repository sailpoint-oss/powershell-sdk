---
id: base-settings
title: BaseSettings
pagination_label: BaseSettings
sidebar_label: BaseSettings
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BaseSettings', 'BaseSettings'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/base-settings
tags: ['SDK', 'Software Development Kit', 'BaseSettings', 'BaseSettings']
---


# BaseSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsEnabled** | **Boolean** | Indicates whether the feature or configuration is enabled. | [optional] [default to $false]
**ClusterId** | **String** | The identifier of the cluster associated with this configuration, if applicable. | [optional] 

## Examples

- Prepare the resource
```powershell
$BaseSettings = Initialize-BaseSettings  -IsEnabled true `
 -ClusterId cluster-001
```

- Convert the resource to JSON
```powershell
$BaseSettings | ConvertTo-JSON
```


[[Back to top]](#) 

