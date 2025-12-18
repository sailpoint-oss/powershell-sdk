---
id: v2025-base-settings
title: BaseSettings
pagination_label: BaseSettings
sidebar_label: BaseSettings
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BaseSettings', 'V2025BaseSettings'] 
slug: /tools/sdk/powershell/v2025/models/base-settings
tags: ['SDK', 'Software Development Kit', 'BaseSettings', 'V2025BaseSettings']
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
$BaseSettings = Initialize-V2025BaseSettings  -IsEnabled true `
 -ClusterId cluster-001
```

- Convert the resource to JSON
```powershell
$BaseSettings | ConvertTo-JSON
```


[[Back to top]](#) 

